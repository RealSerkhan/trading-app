import 'package:auto_route/auto_route.dart';
import 'package:beneficiary/app/app_router.gr.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';
import 'package:beneficiary/features/user/presentation/bloc/user/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserCircleButton extends StatelessWidget {
  const UserCircleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => const SizedBox.shrink(),
          success: (value) => IconButton(
              icon: Icon(
                Icons.manage_accounts_outlined,
                color: context.colors.primaryColor,
              ),
              onPressed: () => context.pushRoute(const UserRoute())),
        );
      },
    );
  }
}
