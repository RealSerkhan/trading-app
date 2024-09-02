import 'dart:convert';

import 'package:beneficiary/features/user/data/models/user_model.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:beneficiary/base/data/stock/hive_disk_cache.dart';

import 'package:stock/stock.dart';

abstract class UserLocalSource {
  /// stream of user
  Stream<UserModel?> getUser();

  /// save user
  Future<void> saveUser(UserModel? user);
}

@Singleton(as: UserLocalSource)
class UserLocalSourceImpl extends UserLocalSource {
  UserLocalSourceImpl(Box userStorage) {

    _userStorage = HiveDiskCache(userStorage);
  }

  static const _storageProfilePrefix = 'ProfileLocalSource';
  static const _keyUser = '$_storageProfilePrefix.token';

  late SourceOfTruth<String, String> _userStorage;

  @override
  Stream<UserModel?> getUser() => _userStorage.reader(_keyUser).map((event) =>
      (event != null) ? UserModel.fromJson(jsonDecode(event)) : null);

  @override
  Future<void> saveUser(UserModel? user) => _userStorage.write(
      _keyUser, user == null ? null : jsonEncode(user.toJson()));
}
