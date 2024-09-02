part of 'update_user_cubit.dart';

@freezed
class UpdateUserState with _$UpdateUserState {
  const factory UpdateUserState.initial() = _Initial;
  const factory UpdateUserState.updating() = _Updating;

  const factory UpdateUserState.success() = _UserUpated;
  const factory UpdateUserState.failure(Failure failure) = _Failure;
}
