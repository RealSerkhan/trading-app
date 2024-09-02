part of 'first_run_cubit.dart';

@freezed
class FirstRunState with _$FirstRunState {
  const factory FirstRunState.initial() = _FirstRunInitial;

  const factory FirstRunState.loading() = FirstRunLoading;

  const factory FirstRunState.firstRun(bool value) = FirstRunDataFetched;
}
