import 'package:auto_route/auto_route.dart';
import 'package:beneficiary/app/app_router.gr.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';
import 'package:beneficiary/base/presentation/utils/ext/int_ext.dart';
import 'package:beneficiary/base/presentation/widgets/button.dart';
import 'package:beneficiary/base/presentation/widgets/texts/body2.dart';
import 'package:beneficiary/features/beneficiary/data/models/beneficiary/beneficiary.dart';
import 'package:flutter/material.dart';
import 'package:responsiveness/responsiveness.dart';

class BeneficiaryCard extends StatelessWidget {
  const BeneficiaryCard(
      {required this.beneficiary, required this.onRecharge, super.key});
  final Beneficiary beneficiary;
  final Function onRecharge;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: context.mediaQuery.size.width / 3,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.sp),
          color: context.colors.white),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Body2(text: beneficiary.nickname),
          10.height,
          Body2(text: beneficiary.phoneNumber),
          10.height,
          CustomButton(
              text: 'Recharge',
              height: 30.h,
              onPressed: () => context.pushRoute(
                  TopUpBeneficiaryRoute(beneficiaryId: beneficiary.id)))
        ],
      ),
    );
  }
}
