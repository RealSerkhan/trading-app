import 'dart:math';

import 'package:beneficiary/base/data/sources/base_remote_source.dart';
import 'package:beneficiary/features/beneficiary/data/models/beneficiary/beneficiary.dart';
import 'package:beneficiary/features/beneficiary/data/models/transaction/transaction.dart';
import 'package:beneficiary/features/beneficiary/data/sources/mock_beneficiaries.dart';
import 'package:beneficiary/features/beneficiary/data/sources/transactions.dart';
import 'package:beneficiary/features/user/data/sources/user_mock_data.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

abstract class BeneficiaryRemoteDataSource {
  Future<List<Beneficiary>> getAllBeneficiary();
  Future<void> addNewBeneficiary(Beneficiary beneficiary);
  Future<List<Transaction>> getAllTransactions(
      {int? month, String? beneficiaryId});
  Future<Transaction> topUpBeneficiary({
    required String beneficiaryId,
    required double amount,
    required double transactionFee,
  });
}

@LazySingleton(as: BeneficiaryRemoteDataSource)
class BeneficiarynRemoteDataSourceImpl extends BaseRemoteSource
    implements BeneficiaryRemoteDataSource {
  const BeneficiarynRemoteDataSourceImpl(super._client, super.sdk);

  @override
  String get loggerTag => 'Beneficiary Remote Source';

  @override
  Future<List<Beneficiary>> getAllBeneficiary() {
    return Future.delayed(Durations.medium2)
        .then((value) => mockBeneficiariesList);

    /* 
    this is how it should be
    return request(
        method: HttpMethod.GET,
        endpoint: '/beneficiary/all_user_beneficiaries',
        callId: 'Get All Beneficiaries',
        serializer: (data) {
          return List.from(
              (data as List).map((json) => Beneficiary.fromJson(json)));
        });
    */
  }

  @override
  Future<void> addNewBeneficiary(Beneficiary beneficiary) {
    return Future.delayed(Durations.medium2)
        .then((value) => mockBeneficiariesList.add(beneficiary));
  }

  @override
  Future<Transaction> topUpBeneficiary({
    required String beneficiaryId,
    required double amount,
    required double transactionFee,
  }) {
    return Future.delayed(Durations.medium1).then((value) {
      final random = Random();
      int randomInt = random.nextInt(99999999);
      final newTransaction = Transaction(
        id: 'transaction_$randomInt',
        beneficiaryId: beneficiaryId,
        amount: amount,
        transactionFee: transactionFee,
        status: TransactionStatus.completed,
        type: TransactionType.topUp,
        date: DateTime.now(),
      );
      transactionsList.add(newTransaction);
      mockUser = mockUser.copyWith(
          balance: (mockUser.balance ?? 0) - (amount + transactionFee));
      return newTransaction;
    });
  }

  @override
  Future<List<Transaction>> getAllTransactions(
      {int? month, String? beneficiaryId}) {
    List<Transaction> filteredTransactions = [...transactionsList];
    if (month != null) {
      filteredTransactions = filteredTransactions
          .where((transaction) => transaction.date.month == month)
          .toList();
    }
    if (beneficiaryId != null) {
      filteredTransactions = filteredTransactions
          .where((transaction) => transaction.beneficiaryId == beneficiaryId)
          .toList();
    }

    return Future.value(filteredTransactions);
  }
}
