import 'package:beneficiary/base/domain/errors/failure.dart';
import 'package:beneficiary/base/domain/usecases/use_case.dart';
import 'package:beneficiary/features/beneficiary/data/models/transaction/transaction.dart';
import 'package:beneficiary/features/beneficiary/domain/repos/beneficiary_repo.dart';
import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';

@injectable
class GetTransactionsUseCase
    extends EitherUseCase<List<Transaction>, TransactionsParams> {
  const GetTransactionsUseCase(this._repository);

  final BeneficiaryRepository _repository;

  @override
  Future<Either<Failure, List<Transaction>>> doWork(TransactionsParams params) {
    return _repository.getTransactions(
      beneficiaryId: params.beneficiaryId,
      month: params.month,
    );
  }
}

class TransactionsParams {
  const TransactionsParams({this.beneficiaryId, this.month});
  final String? beneficiaryId;

  final int? month;
}
