// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i264;

import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:hive/hive.dart' as _i979;
import 'package:http_sdk/http_sdk.dart' as _i934;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;

import '../../app/app_router.dart' as _i510;
import '../../features/trading/data/repos/trading_repo_impl.dart' as _i328;
import '../../features/trading/data/sources/trading_remote_source.dart'
    as _i848;
import '../../features/trading/data/sources/websocket_source.dart' as _i641;
import '../../features/trading/domain/repos/trading_repo.dart' as _i59;
import '../../features/trading/domain/use_cases/get_symbols_use_case.dart'
    as _i48;
import '../../features/trading/domain/use_cases/listen_price_updates_use_case.dart'
    as _i256;
import '../../features/trading/presentation/bloc/trading_bloc.dart' as _i790;
import '../../features/user/data/repos/user_repo_impl.dart' as _i394;
import '../../features/user/data/sources/user_local_source.dart' as _i392;
import '../../features/user/data/sources/user_remote_source.dart' as _i1013;
import '../../features/user/domain/repos/user_repo.dart' as _i669;
import '../../features/user/domain/use_cases/get_user_info_use_case.dart'
    as _i1022;
import '../../features/user/domain/use_cases/update_user_use_case.dart' as _i60;
import '../../features/user/presentation/bloc/update_user/update_user_cubit.dart'
    as _i538;
import '../../features/user/presentation/bloc/user/user_cubit.dart' as _i171;
import '../data/repos/app_repo_impl.dart' as _i307;
import '../data/sources/app_remote_source.dart' as _i297;
import '../data/sources/app_settings_local_source.dart' as _i662;
import '../data/sources/auth_local_datasource.dart' as _i458;
import '../data/stock/app_disk_cache.dart' as _i696;
import '../domain/repos/app_repo.dart' as _i564;
import '../domain/usecases/change_language_use_case.dart' as _i806;
import '../domain/usecases/change_theme_use_case.dart' as _i1048;
import '../domain/usecases/first_run_use_case.dart' as _i257;
import '../domain/usecases/get_theme_use_case.dart' as _i131;
import '../domain/usecases/observe_language_use_case.dart' as _i1024;
import '../networking/http_client.dart' as _i757;
import '../presentation/blocs/app_settings/app_settings_bloc.dart' as _i793;
import '../presentation/blocs/first_run/first_run_cubit.dart' as _i615;
import '../presentation/blocs/localization/localization_bloc.dart' as _i677;
import '../presentation/blocs/navigator/navigator_cubit.dart' as _i875;
import '../presentation/blocs/theme/theme_cubit.dart' as _i450;
import 'app_module.dart' as _i460;
import 'network_module.dart' as _i567;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $initDependencyInjection(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  final networkModule = _$NetworkModule();
  gh.factory<_i875.AppNavigatorCubit>(() => _i875.AppNavigatorCubit());
  gh.singleton<_i510.AppRouter>(() => appModule.getAppRouter());
  gh.singleton<_i558.FlutterSecureStorage>(() => appModule.getSecureStorage());
  gh.singleton<_i895.Connectivity>(() => appModule.getConnectivity());
  await gh.singletonAsync<_i979.Box<dynamic>>(
    () => appModule.appCacheBox(),
    preResolve: true,
  );
  gh.lazySingleton<_i974.Logger>(() => appModule.logger);
  gh.lazySingleton<_i264.Locale>(() => appModule.locale);
  gh.factory<String>(
    () => networkModule.websocketUrl,
    instanceName: 'WebsocketUrl',
  );
  gh.singleton<_i696.AppDiskCache>(
      () => appModule.appDiskCache(gh<_i979.Box<dynamic>>()));
  gh.factory<String>(
    () => networkModule.apiBaseUrl,
    instanceName: 'ApiBaseUrl',
  );
  gh.singleton<_i392.UserLocalSource>(
      () => _i392.UserLocalSourceImpl(gh<_i979.Box<dynamic>>()));
  gh.lazySingleton<_i641.WebSocketService>(
      () => _i641.WebSocketService(gh<String>(instanceName: 'WebsocketUrl')));
  gh.factory<_i361.BaseOptions>(
      () => networkModule.dioOptions(gh<String>(instanceName: 'ApiBaseUrl')));
  gh.singleton<_i662.AppSettingsLocalSource>(
      () => _i662.AppSettingsLocalSourceImpl(gh<_i979.Box<dynamic>>()));
  gh.singleton<_i458.AuthLocalSource>(
      () => _i458.AuthLocalSourceImpl(gh<_i558.FlutterSecureStorage>()));
  gh.singleton<_i460.LanguageLocalSource>(
      () => appModule.appLanguageLocalSource(gh<_i696.AppDiskCache>()));
  gh.singleton<_i460.ThemeLocalSource>(
      () => appModule.appThemeLocalSource(gh<_i696.AppDiskCache>()));
  gh.singleton<_i460.FirstRunFlagLocalSource>(
      () => appModule.firstRunFlagLocalSource(gh<_i696.AppDiskCache>()));
  gh.singleton<_i361.Dio>(() => networkModule.dio(
        gh<_i361.BaseOptions>(),
        gh<_i458.AuthLocalSource>(),
      ));
  gh.singleton<_i757.HttpClient>(
      () => networkModule.httpClient(gh<_i361.Dio>()));
  gh.singleton<_i934.HttpSdk>(() => networkModule.httpSdk(gh<_i361.Dio>()));
  gh.lazySingleton<_i848.TradingRemoteDataSource>(
      () => _i848.TradingRemoteDataSourceImpl(
            gh<_i757.HttpClient>(),
            gh<_i934.HttpSdk>(),
          ));
  gh.lazySingleton<_i297.AppRemoteSource>(() => _i297.AppRemoteSourceImpl(
        gh<_i757.HttpClient>(),
        gh<_i934.HttpSdk>(),
      ));
  gh.singleton<_i564.AppRepository>(() => _i307.AppRepositoryImpl(
        gh<_i460.LanguageLocalSource>(),
        gh<_i460.ThemeLocalSource>(),
        gh<_i297.AppRemoteSource>(),
        gh<_i662.AppSettingsLocalSource>(),
        gh<_i458.AuthLocalSource>(),
      ));
  gh.lazySingleton<_i1013.UserRemoteDataSource>(
      () => _i1013.UserRemoteDataSourceImpl(
            gh<_i757.HttpClient>(),
            gh<_i934.HttpSdk>(),
          ));
  gh.lazySingleton<_i59.TradingRepository>(() => _i328.TradingRepoImpl(
        gh<_i848.TradingRemoteDataSource>(),
        gh<_i641.WebSocketService>(),
        gh<_i458.AuthLocalSource>(),
      ));
  gh.factory<_i257.UpdateFirstRunFlagUseCase>(
      () => _i257.UpdateFirstRunFlagUseCase(gh<_i564.AppRepository>()));
  gh.factory<_i257.ObserveFirstRunUseCase>(
      () => _i257.ObserveFirstRunUseCase(gh<_i564.AppRepository>()));
  gh.lazySingleton<_i806.ChangeLanguageUseCase>(
      () => _i806.ChangeLanguageUseCase(gh<_i564.AppRepository>()));
  gh.lazySingleton<_i1024.ObserveLanguageUseCase>(
      () => _i1024.ObserveLanguageUseCase(gh<_i564.AppRepository>()));
  gh.lazySingleton<_i669.UserRepository>(() => _i394.UserRepoImpl(
        gh<_i1013.UserRemoteDataSource>(),
        gh<_i458.AuthLocalSource>(),
      ));
  gh.factory<_i48.GetSymbolsUseCase>(
      () => _i48.GetSymbolsUseCase(gh<_i59.TradingRepository>()));
  gh.factory<_i256.ListenPriceUpdatesUseCase>(
      () => _i256.ListenPriceUpdatesUseCase(gh<_i59.TradingRepository>()));
  gh.factory<_i1022.GetUserInfoUseCase>(
      () => _i1022.GetUserInfoUseCase(gh<_i669.UserRepository>()));
  gh.factory<_i60.UpdateUserInfoUseCase>(
      () => _i60.UpdateUserInfoUseCase(gh<_i669.UserRepository>()));
  gh.factory<_i538.UpdateUserCubit>(
      () => _i538.UpdateUserCubit(gh<_i60.UpdateUserInfoUseCase>()));
  gh.factory<_i677.LocalizationCubit>(() => _i677.LocalizationCubit(
        gh<_i264.Locale>(),
        gh<_i806.ChangeLanguageUseCase>(),
        gh<_i1024.ObserveLanguageUseCase>(),
      ));
  gh.factory<_i1048.ChangeThemeModeUseCase>(
      () => _i1048.ChangeThemeModeUseCase(gh<_i564.AppRepository>()));
  gh.factory<_i131.GetDefaultThemeMode>(
      () => _i131.GetDefaultThemeMode(gh<_i564.AppRepository>()));
  gh.factory<_i793.AppSettingsBloc>(
      () => _i793.AppSettingsBloc(gh<_i564.AppRepository>()));
  gh.factory<_i615.FirstRunCubit>(() => _i615.FirstRunCubit(
        gh<_i257.ObserveFirstRunUseCase>(),
        gh<_i257.UpdateFirstRunFlagUseCase>(),
      ));
  gh.factory<_i790.TradingBloc>(() => _i790.TradingBloc(
        getSymbolsUseCase: gh<_i48.GetSymbolsUseCase>(),
        listenPriceUpdates: gh<_i256.ListenPriceUpdatesUseCase>(),
      ));
  gh.singleton<_i450.ThemeCubit>(() => _i450.ThemeCubit(
        getDefaultThemeMode: gh<_i131.GetDefaultThemeMode>(),
        changeThemeMode: gh<_i1048.ChangeThemeModeUseCase>(),
      ));
  gh.factory<_i171.UserCubit>(
      () => _i171.UserCubit(gh<_i1022.GetUserInfoUseCase>()));
  return getIt;
}

class _$AppModule extends _i460.AppModule {}

class _$NetworkModule extends _i567.NetworkModule {}
