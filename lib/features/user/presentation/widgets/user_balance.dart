import 'package:beneficiary/base/presentation/utils/ext/int_ext.dart';
import 'package:beneficiary/base/presentation/widgets/texts/body2.dart';
import 'package:beneficiary/features/user/presentation/bloc/user/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserBalance extends StatelessWidget {
  const UserBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => const SizedBox.shrink(),
          success: (value) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Body2(text: "User balance: ${value.user.balance ?? 0}"), 20.height],
          ),
        );
      },
    );
  }
}
