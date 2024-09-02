part of 'beneficiaries_list_cubit.dart';

@freezed
class BeneficiariesListState with _$BeneficiariesListState {
  const factory BeneficiariesListState.initial() = _Initial;
  const factory BeneficiariesListState.fetching() = _Fetching;

  const factory BeneficiariesListState.success(
      List<Beneficiary> beneficiaryList) = _BeneficiariesFetched;

  const factory BeneficiariesListState.failure(Failure failure) =
      _BeneficiariesCouldNotFetched;
}
