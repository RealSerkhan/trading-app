import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:beneficiary/base/data/stock/secure_storage_sot.dart';

import 'package:stock/stock.dart';

abstract class AuthLocalSource {
  /// stream of user access token
  Stream<String?> getUserToken();

  /// save user access token
  Future<void> saveUserToken(String? token);
}

@Singleton(as: AuthLocalSource)
class AuthLocalSourceImpl extends AuthLocalSource {
  AuthLocalSourceImpl(
    FlutterSecureStorage storage,
  ) {
    final secureStorage = SecuredStorageSourceOfTruth(storage);
    _userTokenStorage = secureStorage;
  }

  static const _storageAuthPrefix = 'AuthLocalSource';
  static const _keyToken = '$_storageAuthPrefix.token';

  late SourceOfTruth<String, String> _userTokenStorage;

  @override
  Stream<String?> getUserToken() => _userTokenStorage.reader(_keyToken);

  @override
  Future<void> saveUserToken(String? token) =>
      _userTokenStorage.write(_keyToken, token);
}
