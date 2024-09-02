import 'package:beneficiary/base/domain/errors/failure.dart';
import 'package:beneficiary/base/domain/usecases/use_case.dart';
import 'package:beneficiary/features/user/data/models/user_type.dart';
import 'package:beneficiary/features/user/domain/repos/user_repo.dart';
import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';

@injectable
class UpdateUserInfoUseCase extends EitherUseCase<void, UpdateUserParams> {
  const UpdateUserInfoUseCase(this._repository);

  final UserRepository _repository;

  @override
  Future<Either<Failure, void>> doWork(UpdateUserParams params) {
    return _repository.updateUser(
      userType: params.userType,
      userName: params.userName,
      name: params.name,
      balance: params.balance,
      isVerified: params.isVerified,
      dateOfBirth: params.dateOfBirth,
    );
  }
}

class UpdateUserParams {
  const UpdateUserParams(
      {this.userType,
      this.name,
      this.userName,
      this.balance,
      this.dateOfBirth,
      this.isVerified = false});
  final UserType? userType;
  final String? name;
  final String? userName;
  final double? balance;
  final bool isVerified;
  final DateTime? dateOfBirth;
}
