import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required String id,
    required String beneficiaryId, // Reference to the beneficiary
    required double amount,
    required double transactionFee,
    required TransactionStatus status,
    required TransactionType type,
    required DateTime date,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}

enum TransactionStatus {
  pending,
  completed,
  failed,
}

enum TransactionType {
  topUp,
  other,
}
