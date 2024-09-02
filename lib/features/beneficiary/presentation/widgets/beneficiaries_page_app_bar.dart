import 'package:auto_route/auto_route.dart';
import 'package:beneficiary/app/app_router.gr.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';
import 'package:beneficiary/base/presentation/widgets/app_bar/app_bar.dart';
import 'package:beneficiary/features/beneficiary/presentation/bloc/beneficiaries_list/beneficiaries_list_cubit.dart';
import 'package:beneficiary/features/user/presentation/widgets/user_circle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BeneficiariesAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const BeneficiariesAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BeneficiariesListCubit, BeneficiariesListState>(
      builder: (context, state) {
        return CustomAppBar(
          leading: const UserCircleButton(),
          title: 'Beneficiary',
          actions: [
            state.maybeWhen(
              orElse: () => const SizedBox.shrink(),
              success: (beneficiaryList) => IconButton(
                onPressed: () => context.pushRoute(const AddBeneficiaryRoute()),
                icon: Icon(
                  Icons.add_outlined,
                  color: context.colors.primaryColor,
                ),
              ),
            )
          ],
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
