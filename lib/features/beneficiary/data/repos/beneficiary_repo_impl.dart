import 'dart:math';

import 'package:beneficiary/base/data/repos/base_repo_impl.dart';
import 'package:beneficiary/base/domain/errors/failure.dart';
import 'package:beneficiary/features/beneficiary/data/models/beneficiary/beneficiary.dart';
import 'package:beneficiary/features/beneficiary/data/models/transaction/transaction.dart';
import 'package:beneficiary/features/beneficiary/data/sources/beneficiary_remote_source.dart';
import 'package:beneficiary/features/beneficiary/domain/repos/beneficiary_repo.dart';
import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';

@LazySingleton(as: BeneficiaryRepository)
class BeneficiaryRepoImpl extends BaseRepositoryImpl
    implements BeneficiaryRepository {
  BeneficiaryRepoImpl(
    this._remoteDataSource,
    super.authLocal,
  );

  final BeneficiaryRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, void>> addBeneficiary(
      {required String nickname, required String phoneNumber}) {
    final random = Random();
    int randomInt = random.nextInt(99999999);
    return request(() => _remoteDataSource.addNewBeneficiary(Beneficiary(
        id: 'beneficiary_$randomInt',
        nickname: nickname,
        phoneNumber: phoneNumber)));
  }

  @override
  Future<Either<Failure, List<Beneficiary>>> getAllBeneficiaries() {
    return request(() => _remoteDataSource.getAllBeneficiary());
  }

  @override
  Future<Either<Failure, Transaction>> topUpBeneficiary(
      {required String beneficiaryId,
      required double amount,
      required double transactionFee}) {
    return request(() => _remoteDataSource.topUpBeneficiary(
        beneficiaryId: beneficiaryId,
        amount: amount,
        transactionFee: transactionFee));
  }

  @override
  Future<Either<Failure, List<Transaction>>> getTransactions(
      {int? month, String? beneficiaryId}) {
    return request(() => _remoteDataSource.getAllTransactions(
          beneficiaryId: beneficiaryId,
          month: month,
        ));
  }
}
