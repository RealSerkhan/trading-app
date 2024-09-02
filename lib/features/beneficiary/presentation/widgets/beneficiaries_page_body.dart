import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';
import 'package:beneficiary/base/presentation/utils/ext/int_ext.dart';
import 'package:beneficiary/base/presentation/widgets/texts/title2.dart';
import 'package:beneficiary/features/beneficiary/presentation/bloc/beneficiaries_list/beneficiaries_list_cubit.dart';
import 'package:beneficiary/features/beneficiary/presentation/widgets/beneficiary_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsiveness/responsiveness.dart';

class BeneficiariesPageBody extends StatelessWidget {
  const BeneficiariesPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Title2(
            text: 'Mobile Recharge',
            fontWeight: FontWeight.w600,
            color: context.colors.primaryColor,
          ),
          20.height,
          SegmentedTabControl(
            tabTextColor: context.colors.textBlackKnight.withOpacity(0.3),
            barDecoration: BoxDecoration(
                color: context.colors.borderColor,
                borderRadius: BorderRadius.circular(100.sp)),
            selectedTabTextColor: context.colors.primaryColor,
            indicatorDecoration:
                BoxDecoration(borderRadius: BorderRadius.circular(100)),
            textStyle:
                context.textTheme.body3.copyWith(fontWeight: FontWeight.w700),
            indicatorPadding: EdgeInsets.all(5.sp),
            tabs: [
              SegmentTab(
                label: 'Recharge',
                color: context.colors.white,
              ),
              SegmentTab(
                label: 'History',
                color: context.colors.white,
              ),
            ],
          ),
          20.height,
          Expanded(
            child: TabBarView(
              physics: const BouncingScrollPhysics(),
              children: [
                BlocBuilder<BeneficiariesListCubit, BeneficiariesListState>(
                  builder: (context, state) {
                    return state.maybeMap(
                      orElse: () => const SizedBox.shrink(),
                      success: (value) => Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 120.h,
                            width: context.mediaQuery.size.width,
                            child: ListView.separated(
                              itemCount: value.beneficiaryList.length,
                              scrollDirection: Axis.horizontal,
                              separatorBuilder: (context, index) => 10.width,
                              itemBuilder: (context, index) {
                                final beneficiary =
                                    value.beneficiaryList.elementAt(index);
                                return BeneficiaryCard(
                                  beneficiary: beneficiary,
                                  onRecharge: () {},
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
