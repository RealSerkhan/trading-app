import 'package:beneficiary/base/domain/errors/failure.dart';
import 'package:beneficiary/base/domain/models/no_params.dart';
import 'package:beneficiary/base/domain/usecases/use_case.dart';
import 'package:beneficiary/features/user/data/models/user_model.dart';
import 'package:beneficiary/features/user/domain/repos/user_repo.dart';
import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';

@injectable
class GetUserInfoUseCase extends EitherUseCase<UserModel, NoParams> {
  const GetUserInfoUseCase(this._repository);

  final UserRepository _repository;

  @override
  Future<Either<Failure, UserModel>> doWork(NoParams params) {
    return _repository.getUserInfo();
  }
}
