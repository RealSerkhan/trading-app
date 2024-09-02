import 'package:auto_route/auto_route.dart';
import 'package:beneficiary/base/di/di_entry_point.dart';
import 'package:beneficiary/base/presentation/utils/ext/int_ext.dart';
import 'package:beneficiary/base/presentation/widgets/app_bar/app_bar.dart';
import 'package:beneficiary/base/presentation/widgets/loading_blur.dart';
import 'package:beneficiary/base/presentation/widgets/texts/body1.dart';
import 'package:beneficiary/features/user/presentation/bloc/update_user/update_user_cubit.dart';
import 'package:beneficiary/features/user/presentation/bloc/user/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsiveness/responsiveness.dart';

@RoutePage()
class UserPage extends StatefulWidget {
  const UserPage({super.key});
  static const String routeName = '/user-details';

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  late UpdateUserCubit _updateUserCubit;
  @override
  void initState() {
    _updateUserCubit = getIt();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UpdateUserCubit, UpdateUserState>(
      listener: (context, state) {
        state.mapOrNull(
          success: (value) {
            context.read<UserCubit>().getUserData(refresh: false);
          },
        );
      },
      bloc: _updateUserCubit,
      builder: (context, state) {
        return LoadingBlur(
          isLoading: state.maybeMap(
            orElse: () => false,
            updating: (value) => true,
          ),
          child: BlocBuilder<UserCubit, UserState>(
            builder: (context, userState) {
              return Scaffold(
                appBar: const CustomAppBar(title: 'User'),
                body: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Expanded(
                            child: Body1(text: 'Is Verified:'),
                          ),
                          10.width,
                          Switch.adaptive(
                              value: userState.maybeMap(
                                orElse: () => false,
                                success: (value) => value.user.isVerified,
                              ),
                              onChanged: (value) {
                                _updateUserCubit.updateUser(isVerified: value);
                              })
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
