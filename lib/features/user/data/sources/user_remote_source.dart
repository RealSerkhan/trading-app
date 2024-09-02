import 'package:beneficiary/base/data/sources/base_remote_source.dart';
import 'package:beneficiary/features/user/data/models/user_model.dart';
import 'package:beneficiary/features/user/data/models/user_type.dart';
import 'package:beneficiary/features/user/data/sources/user_mock_data.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

abstract class UserRemoteDataSource {
  Future<UserModel> getUserInfo();
  Future<void> updateUser(
      {UserType? userType,
      String? name,
      String? userName,
      double? balance,
      bool isVerified = false,
      DateTime? dateOfBirth});
}

@LazySingleton(as: UserRemoteDataSource)
class UserRemoteDataSourceImpl extends BaseRemoteSource
    implements UserRemoteDataSource {
  const UserRemoteDataSourceImpl(super._client, super.sdk);

  @override
  String get loggerTag => 'User Remote Source';

  @override
  Future<UserModel> getUserInfo() {
    return Future.delayed(Durations.medium1).then((value) => mockUser);
  }

  @override
  Future<void> updateUser(
      {UserType? userType,
      String? name,
      String? userName,
      double? balance,
      bool isVerified = false,
      DateTime? dateOfBirth}) {
    return Future.delayed(Durations.medium1)
        .then((value) => mockUser = mockUser.copyWith(
              userType: userType ?? mockUser.userType,
              balance: balance ?? mockUser.balance,
              name: name ?? mockUser.name,
              isVerified: isVerified,
              dateOfBirth: dateOfBirth ?? mockUser.dateOfBirth,
            ));
  }
}
