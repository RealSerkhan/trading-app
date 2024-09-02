import 'package:beneficiary/base/domain/errors/failure.dart';
import 'package:beneficiary/base/domain/usecases/use_case.dart';
import 'package:beneficiary/features/beneficiary/domain/repos/beneficiary_repo.dart';
import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';

@injectable
class AddBeneficiaryUseCase extends EitherUseCase<void, AddBeneficiaryParams> {
  const AddBeneficiaryUseCase(this._repository);

  final BeneficiaryRepository _repository;

  @override
  Future<Either<Failure, void>> doWork(AddBeneficiaryParams params) {
    return _repository.addBeneficiary(
        nickname: params.nickname, phoneNumber: params.phoneNumber);
  }
}

class AddBeneficiaryParams {
  const AddBeneficiaryParams(
      {required this.nickname, required this.phoneNumber});
  final String nickname;
  final String phoneNumber;
}
