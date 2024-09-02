part of 'add_beneficiary_cubit.dart';

@freezed
class AddBeneficiaryState with _$AddBeneficiaryState {
  const factory AddBeneficiaryState.initial() = _Initial;
  const factory AddBeneficiaryState.adding() = _Adding;

  const factory AddBeneficiaryState.added() = _Added;

  const factory AddBeneficiaryState.failure(Failure failure) = _CouldNotAdded;

  const factory AddBeneficiaryState.maxLimitExceeded() = _MaxLimitExceeded;
}
