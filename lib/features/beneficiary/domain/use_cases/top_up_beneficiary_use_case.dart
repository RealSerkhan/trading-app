import 'package:beneficiary/base/domain/errors/failure.dart';
import 'package:beneficiary/base/domain/usecases/use_case.dart';
import 'package:beneficiary/features/beneficiary/data/models/transaction/transaction.dart';
import 'package:beneficiary/features/beneficiary/domain/repos/beneficiary_repo.dart';
import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';

@injectable
class TopUpBeneficiaryUseCase
    extends EitherUseCase<Transaction, TopUpBeneficiaryParams> {
  const TopUpBeneficiaryUseCase(this._repository);

  final BeneficiaryRepository _repository;

  @override
  Future<Either<Failure, Transaction>> doWork(TopUpBeneficiaryParams params) {
    return _repository.topUpBeneficiary(
        beneficiaryId: params.beneficiaryId,
        amount: params.amount,
        transactionFee: params.transactionFee);
  }
}

class TopUpBeneficiaryParams {
  const TopUpBeneficiaryParams(
      {required this.beneficiaryId,
      required this.amount,
      required this.transactionFee});
  final String beneficiaryId;
  final double amount;
  final double transactionFee;
}
