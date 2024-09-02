part of 'app_settings_bloc.dart';

class AppSettingsState extends Equatable {
  const AppSettingsState();
  @override
  List<Object?> get props => [];
}

class AppSettingLoading extends AppSettingsState {
  @override
  List<Object?> get props => [];
}

class AppSettingsSuccessState extends AppSettingsState {
  const AppSettingsSuccessState({required this.appSettings});
  final AppSettingsModel appSettings;
  @override
  List<Object?> get props => [appSettings];
}

class AppSettingErrorState extends AppSettingsState {
  const AppSettingErrorState(this.failure);
  final Failure failure;
  @override
  List<Object?> get props => [];
}
