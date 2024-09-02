import 'package:auto_route/auto_route.dart';
import 'package:beneficiary/features/beneficiary/presentation/bloc/beneficiaries_list/beneficiaries_list_cubit.dart';
import 'package:beneficiary/features/beneficiary/presentation/widgets/beneficiaries_page_app_bar.dart';
import 'package:beneficiary/features/beneficiary/presentation/widgets/beneficiaries_page_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class BeneficirariesPage extends StatefulWidget {
  const BeneficirariesPage({super.key});
  static const String routeName = '/beneficiaries-list';

  @override
  State<BeneficirariesPage> createState() => _BeneficirariesPageState();
}

class _BeneficirariesPageState extends State<BeneficirariesPage> {
  @override
  void initState() {
    context.read<BeneficiariesListCubit>().getAllBeneficiary();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: BeneficiariesAppBar(),
        body: BeneficiariesPageBody(),
      ),
    );
  }
}
