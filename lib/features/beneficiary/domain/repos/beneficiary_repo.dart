import 'package:beneficiary/features/beneficiary/data/models/beneficiary/beneficiary.dart';
import 'package:beneficiary/features/beneficiary/data/models/transaction/transaction.dart';
import 'package:dartz/dartz.dart';

import '../../../../base/domain/errors/failure.dart';

abstract class BeneficiaryRepository {
  Future<Either<Failure, List<Beneficiary>>> getAllBeneficiaries();
  Future<Either<Failure, void>> addBeneficiary(
      {required String nickname, required String phoneNumber});
  Future<Either<Failure, List<Transaction>>> getTransactions(
      {int? month, String? beneficiaryId});

  Future<Either<Failure, Transaction>> topUpBeneficiary({
    required String beneficiaryId,
    required double amount,
    required double transactionFee,
  });
}
