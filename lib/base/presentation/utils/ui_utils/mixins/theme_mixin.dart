import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';
import 'package:beneficiary/base/presentation/utils/localizations_generated/l10n.dart';
import 'package:flutter/material.dart';

import 'package:theme/theme.dart';

mixin StatelessWidgetMixin<T extends StatelessWidget> {
  AppThemeData get theme => AppTheme.of(context);
  AppColorsData get colors => AppTheme.of(context).colors;
  AppTypographyData get textTheme => AppTheme.of(context).typography;
  AppLocalizations get localizations => AppLocalizations.of(context);
  EdgeInsets get viewPadding => context.mediaQuery.viewPadding;
  EdgeInsets get viewInsets => context.mediaQuery.viewInsets;

  void init(BuildContext context) {
    // Set the context property in the mixin
    this.context = context;
  }

  // Define a mutable context property in the mixin
  late final BuildContext context;
}
