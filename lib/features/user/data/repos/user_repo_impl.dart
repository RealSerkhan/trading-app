import 'package:beneficiary/base/data/repos/base_repo_impl.dart';
import 'package:beneficiary/base/domain/errors/failure.dart';
import 'package:beneficiary/features/user/data/models/user_model.dart';
import 'package:beneficiary/features/user/data/models/user_type.dart';
import 'package:beneficiary/features/user/data/sources/user_remote_source.dart';
import 'package:beneficiary/features/user/domain/repos/user_repo.dart';
import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';

@LazySingleton(as: UserRepository)
class UserRepoImpl extends BaseRepositoryImpl implements UserRepository {
  UserRepoImpl(
    this._remoteDataSource,
    super.authLocal,
  );

  final UserRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, UserModel>> getUserInfo() {
    return request(() => _remoteDataSource.getUserInfo());
  }

  @override
  Future<Either<Failure, void>> updateUser(
      {UserType? userType,
      String? name,
      String? userName,
      double? balance,
      bool isVerified = false,
      DateTime? dateOfBirth}) {
    return request(() => _remoteDataSource.updateUser(
          userType: userType,
          userName: userName,
          name: name,
          balance: balance,
          isVerified: isVerified,
          dateOfBirth: dateOfBirth,
        ));
  }
}
