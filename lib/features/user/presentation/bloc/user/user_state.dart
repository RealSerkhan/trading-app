part of 'user_cubit.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.loading() = _Loading;

  const factory UserState.success(UserModel user) = _UserFetched;

  const factory UserState.failure(Failure failure) = _UserCouldNotFetched;
}
