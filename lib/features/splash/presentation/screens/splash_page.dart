import 'package:auto_route/auto_route.dart';
import 'package:beneficiary/app/app_router.gr.dart';
import 'package:beneficiary/base/presentation/blocs/app_settings/app_settings_bloc.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';
import 'package:beneficiary/base/presentation/utils/ui_utils/mixins/context_state_mixin.dart';
import 'package:beneficiary/base/presentation/utils/ui_utils/mixins/state_mixin.dart';
import 'package:beneficiary/features/user/presentation/bloc/user/user_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  static const String routeName = '/splash';

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with ContextStateMixin<SplashPage>, StateMixin {
  late UserCubit _userCubit;
  late AppSettingsBloc _appSettingsBloc;

  @override
  void initState() {
    _userCubit = context.read<UserCubit>();
    _appSettingsBloc = context.read<AppSettingsBloc>();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<UserCubit, UserState>(
          bloc: _userCubit,
          listener: (context, state) {
            state.whenOrNull(
              success: (user) => context.replaceRoute(const SymbolsRoute()),
            );
          },
        ),
        BlocListener<AppSettingsBloc, AppSettingsState>(
          bloc: _appSettingsBloc..add(GetAppSettingsEvent()),
          listener: (context, state) {
            if (state is AppSettingsSuccessState) {
              _userCubit.getUserData();
            } else if (state is AppSettingErrorState) {
              showSnackbar(customMessage: context.localizations.something_went_wrong);
            }
          },
        ),
      ],
      child: Scaffold(
          body: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment(0.00, -1.00),
                      end: Alignment(0, 1),
                      colors: [Color(0xff0175CC), Color(0xff013B66)])),
              width: double.infinity,
              height: double.infinity,
              child: const Center())),
    );
  }
}
