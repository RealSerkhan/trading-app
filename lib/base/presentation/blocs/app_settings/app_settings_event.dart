part of 'app_settings_bloc.dart';

sealed class AppSettingsEvent extends Equatable {
  const AppSettingsEvent();

  @override
  List<Object> get props => [];
}

class GetAppSettingsEvent extends AppSettingsEvent {}

class UpdateAppSettings extends AppSettingsEvent {
  const UpdateAppSettings(this.appSettingsModel);
  final AppSettingsModel appSettingsModel;
}
