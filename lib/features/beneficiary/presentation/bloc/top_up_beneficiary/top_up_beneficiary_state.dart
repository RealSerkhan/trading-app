part of 'top_up_beneficiary_cubit.dart';

@freezed
class TopUpBeneficiaryState with _$TopUpBeneficiaryState {
  const factory TopUpBeneficiaryState.initial() = _Initial;
  const factory TopUpBeneficiaryState.loading() = _Loading;

  const factory TopUpBeneficiaryState.success(Transaction transaction) =
      _Success;

  const factory TopUpBeneficiaryState.failure(Failure failure) = _Failure;
}
