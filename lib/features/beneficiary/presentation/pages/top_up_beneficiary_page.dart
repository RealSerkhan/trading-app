import 'package:auto_route/auto_route.dart';
import 'package:beneficiary/app/app_router.gr.dart';
import 'package:beneficiary/base/di/di_entry_point.dart';
import 'package:beneficiary/base/presentation/blocs/app_settings/app_settings_bloc.dart';
import 'package:beneficiary/base/presentation/pages/core_pages/error_page.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';
import 'package:beneficiary/base/presentation/utils/ext/int_ext.dart';
import 'package:beneficiary/base/presentation/utils/ui_utils/mixins/state_mixin.dart';
import 'package:beneficiary/base/presentation/widgets/app_bar/app_bar.dart';
import 'package:beneficiary/base/presentation/widgets/button.dart';
import 'package:beneficiary/base/presentation/widgets/texts/body2.dart';
import 'package:beneficiary/base/presentation/widgets/texts/body4.dart';
import 'package:beneficiary/base/presentation/widgets/texts/title2.dart';
import 'package:beneficiary/features/beneficiary/presentation/bloc/top_up_beneficiary/top_up_beneficiary_cubit.dart';
import 'package:beneficiary/features/user/presentation/bloc/user/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsiveness/responsiveness.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

@RoutePage()
class TopUpBeneficiaryPage extends StatefulWidget {
  const TopUpBeneficiaryPage({required this.beneficiaryId, super.key});
  static const String routeName = '/top-up-beneficiary';
  final String beneficiaryId;

  @override
  State<TopUpBeneficiaryPage> createState() => _TopUpBeneficiaryPageState();
}

class _TopUpBeneficiaryPageState extends State<TopUpBeneficiaryPage>
    with StateMixin {
  double? selectedAmount;
  late TopUpBeneficiaryCubit _topUpBeneficiaryCubit;
  @override
  void initState() {
    _topUpBeneficiaryCubit = getIt();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TopUpBeneficiaryCubit, TopUpBeneficiaryState>(
      bloc: _topUpBeneficiaryCubit,
      listener: (context, state) {
        state.whenOrNull(
          success: (transaction) {
            context.read<UserCubit>().getUserData(refresh: false);
            context.router.popUntil(
                (route) => route.settings.name == BeneficirariesRoute.name);
          },
          failure: (failure) => showSnackbar(failure: failure),
        );
      },
      builder: (context, state) {
        return BlocBuilder<AppSettingsBloc, AppSettingsState>(
          builder: (context, appSettingsState) {
            if (appSettingsState is! AppSettingsSuccessState) {
              return ErrorPage(
                  onRetry: () => context
                      .read<AppSettingsBloc>()
                      .add(GetAppSettingsEvent()));
            }
            return Scaffold(
              appBar: const CustomAppBar(title: 'Top-up'),
              body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BlocBuilder<UserCubit, UserState>(
                        builder: (context, state) {
                          return state.maybeMap(
                            orElse: () => const SizedBox.shrink(),
                            success: (value) => Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Body2(
                                    text:
                                        "User balance: ${value.user.balance ?? 0}"),
                                20.height
                              ],
                            ),
                          );
                        },
                      ),
                      const Title2(text: 'Options'),
                      20.height,
                      SizedBox(
                        height: 60.h,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: appSettingsState
                              .appSettings.availableTopUpOptions.length,
                          separatorBuilder: (context, index) => 10.width,
                          itemBuilder: (context, index) {
                            final amount = appSettingsState
                                .appSettings.availableTopUpOptions
                                .elementAt(index);
                            bool isSelected = selectedAmount == amount;

                            return ZoomTapAnimation(
                              onTap: () {
                                selectedAmount = amount;
                                setState(() {});
                              },
                              child: Container(
                                height: 60.h,
                                width: 60.h,
                                decoration: BoxDecoration(
                                    color: isSelected
                                        ? context.colors.primaryColor
                                        : context.colors.white,
                                    border: Border.all(
                                        color: context.colors.borderColor),
                                    borderRadius: BorderRadius.circular(6.sp)),
                                child: Center(
                                    child: Body4(
                                  text: "$amount",
                                  color: isSelected
                                      ? context.colors.white
                                      : context.colors.grey,
                                )),
                              ),
                            );
                          },
                        ),
                      ),
                      const Spacer(),
                      CustomButton(
                          isActive: selectedAmount != null,
                          text: 'Top Up',
                          onPressed: () {
                            final userState = context.read<UserCubit>().state;
                            userState.whenOrNull(
                              success: (user) {
                                _topUpBeneficiaryCubit.topUp(
                                    beneficiaryId: widget.beneficiaryId,
                                    amount: selectedAmount!,
                                    appSettings: appSettingsState.appSettings,
                                    isVerified: user.isVerified,
                                    userBalance: user.balance ?? 0);
                              },
                              failure: (failure) => 'User needs to sign in',
                            );
                          }),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
