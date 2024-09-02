import 'package:auto_route/auto_route.dart';
import 'package:beneficiary/base/di/di_entry_point.dart';
import 'package:beneficiary/base/presentation/utils/ext/int_ext.dart';
import 'package:beneficiary/base/presentation/utils/ui_utils/mixins/state_mixin.dart';
import 'package:beneficiary/base/presentation/widgets/app_bar/app_bar.dart';
import 'package:beneficiary/base/presentation/widgets/button.dart';
import 'package:beneficiary/base/presentation/widgets/loading_blur.dart';
import 'package:beneficiary/base/presentation/widgets/text_field.dart';
import 'package:beneficiary/base/utils/ext/string_ext.dart';
import 'package:beneficiary/features/beneficiary/presentation/bloc/add_beneficiary/add_beneficiary_cubit.dart';
import 'package:beneficiary/features/beneficiary/presentation/bloc/beneficiaries_list/beneficiaries_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsiveness/responsiveness.dart';

@RoutePage()
class AddBeneficiaryPage extends StatefulWidget {
  const AddBeneficiaryPage({super.key});
  static const String routeName = '/add-beneficiary';

  @override
  State<AddBeneficiaryPage> createState() => _AddBeneficiaryPageState();
}

class _AddBeneficiaryPageState extends State<AddBeneficiaryPage>
    with StateMixin {
  final TextEditingController _nicknameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  late AddBeneficiaryCubit _addBeneficiaryCubit;
  @override
  void initState() {
    _addBeneficiaryCubit = getIt();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddBeneficiaryCubit, AddBeneficiaryState>(
      listener: (context, state) {
        state.whenOrNull(
          failure: (failure) => showSnackbar(failure: failure),
          added: () {
            context.read<BeneficiariesListCubit>().getAllBeneficiary();
            context.maybePop();
          },
          maxLimitExceeded: () => showSnackbar(
              customMessage: 'You cant have more than 5 beneficiaries'),
        );
      },
      bloc: _addBeneficiaryCubit,
      builder: (context, state) {
        return LoadingBlur(
          isLoading: state.maybeMap(
            orElse: () => false,
            adding: (value) => true,
          ),
          child: Scaffold(
            appBar: const CustomAppBar(title: 'Add Beneficiary'),
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    CustomTextField(
                      title: 'Nickname',
                      controller: _nicknameController,
                    ),
                    20.height,
                    CustomTextField(
                      title: 'Phone Number',
                      keyBoardType: TextInputType.phone,
                      controller: _phoneNumberController,
                      validator: (v) => v?.required(context),
                    ),
                    const Spacer(),
                    CustomButton(
                        text: 'Add',
                        onPressed: () {
                          final state =
                              context.read<BeneficiariesListCubit>().state;
                          state.whenOrNull(
                            success: (beneficiaryList) => _addBeneficiaryCubit
                                .addBeneficiary(beneficiaryList.length,
                                    nickname: _nicknameController.text,
                                    phoneNumber: _phoneNumberController.text),
                          );
                        }),
                    10.height,
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
