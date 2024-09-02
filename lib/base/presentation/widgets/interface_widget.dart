import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:beneficiary/base/presentation/blocs/localization/localization_bloc.dart';
import 'package:beneficiary/base/presentation/ui-models/languages_enum.dart';

class AppInterfaceWidget extends StatelessWidget {
  const AppInterfaceWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalizationCubit, LanguageEnum>(
      builder: (context, state) {
        return Transform.rotate(
          angle: pi * (state.isRtl ? -1 : 0),
          child: child,
        );
      },
    );
  }
}
