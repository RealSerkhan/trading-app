import 'package:beneficiary/base/domain/errors/failure.dart';
import 'package:beneficiary/base/domain/models/app_settings/app_settings.dart';
import 'package:beneficiary/features/beneficiary/data/models/transaction/transaction.dart';
import 'package:beneficiary/features/beneficiary/domain/use_cases/get_transactions_use_case.dart';
import 'package:beneficiary/features/beneficiary/domain/use_cases/top_up_beneficiary_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'top_up_beneficiary_state.dart';
part 'top_up_beneficiary_cubit.freezed.dart';

@injectable
class TopUpBeneficiaryCubit extends Cubit<TopUpBeneficiaryState> {
  TopUpBeneficiaryCubit(
      this._getTransactionsUseCase, this._topUpBeneficiaryUseCase)
      : super(const TopUpBeneficiaryState.initial());
  final GetTransactionsUseCase _getTransactionsUseCase;
  final TopUpBeneficiaryUseCase _topUpBeneficiaryUseCase;

  topUp(
      {required String beneficiaryId,
      required double amount,
      required AppSettingsModel appSettings,
      required bool isVerified,
      required double userBalance}) async {
    emit(const _Loading());
    //if user balance is less than requested topup amount
    if (userBalance < amount) {
      emit(const _Failure(RequestFailure(
          errorMessage: "User doesnt have sufficient balance!")));
      return;
    }
    //get all current month transactions
    final transActions = await _getTransactionsUseCase
        .call(TransactionsParams(month: DateTime.now().month));

    transActions.fold((failure) => emit(_Failure(failure)),
        (transActions) async {
      final beneficiaryTransactions = transActions
          .where((transaction) => transaction.beneficiaryId == beneficiaryId);
      // Calculate the total amount of the Beneficiary per month
      final double totalBeneficiaryAmountPerMonth = beneficiaryTransactions
          .fold(0.0, (sum, transaction) => sum + transaction.amount);
      // Calculate the total amount of all Beneficiaries per month
      final double totalAllBeneficiariesAmountPerMonth = transActions.fold(
          0.0, (sum, transaction) => sum + transaction.amount);
      //if user is verified and exceeded the limit of one beneficiary top up limit per month
      if (isVerified &&
          appSettings.maxTopUpPerMonthVerified <=
              totalBeneficiaryAmountPerMonth) {
        emit(_Failure(RequestFailure(
            errorMessage:
                'Verified user can top up a maximum of AED ${appSettings.maxTopUpPerMonthVerified} per calendar month per beneficiary')));
        return;
      }
      //if user is unverified and exceeded the limit of one beneficiary top up limit per month
      else if (!isVerified &&
          appSettings.maxTopUpPerMonthUnverified <=
              totalBeneficiaryAmountPerMonth) {
        emit(_Failure(RequestFailure(
            errorMessage:
                'Unverified user can top up a maximum of AED ${appSettings.maxTopUpPerMonthUnverified} per calendar month per beneficiary')));
        return;
      }
      //if user exceeded the total top up limit per month
      if (appSettings.maxTotalTopUpPerMonth <=
          totalAllBeneficiariesAmountPerMonth) {
        emit(_Failure(RequestFailure(
            errorMessage:
                'User is limited to a total of AED ${appSettings.maxTotalTopUpPerMonth} per month for all beneficiaries.')));
        return;
      }
      final result = await _topUpBeneficiaryUseCase.call(TopUpBeneficiaryParams(
          beneficiaryId: beneficiaryId,
          amount: amount,
          transactionFee: appSettings.topUpTransactionFee));
      result.fold((failure) => emit(_Failure(failure)),
          (transaction) => emit(_Success(transaction)));
    });
  }
}
