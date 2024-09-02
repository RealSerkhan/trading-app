import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:beneficiary/base/domain/errors/failure.dart';
import 'package:beneficiary/base/domain/models/app_settings/app_settings.dart';
import 'package:beneficiary/base/domain/repos/app_repo.dart';

part 'app_settings_event.dart';
part 'app_settings_state.dart';

@injectable
class AppSettingsBloc extends Bloc<AppSettingsEvent, AppSettingsState> {
  AppSettingsBloc(this._appRepository) : super(const AppSettingsState()) {
    on<GetAppSettingsEvent>((event, emit) async {
      await _getSettings(emit);
    });
    on<UpdateAppSettings>((event, emit) async {
      await _update(event, emit);
    });
  }
  final AppRepository _appRepository;

  Future<void> _getSettings(Emitter<AppSettingsState> emit) async {
    emit(AppSettingLoading());
    final result = await _appRepository.getRemoteAppSettings();
    result.fold(
      (failure) => AppSettingErrorState(failure),
      (appSettings) => emit(AppSettingsSuccessState(appSettings: appSettings)),
    );
  }

  Future<void> _update(
      UpdateAppSettings event, Emitter<AppSettingsState> emit) async {
    await _appRepository.updateAppSettings(event.appSettingsModel);
    emit(AppSettingsSuccessState(appSettings: event.appSettingsModel));
  }
}
