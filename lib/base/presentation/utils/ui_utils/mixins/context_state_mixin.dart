import 'package:flutter/material.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';
import 'package:beneficiary/base/presentation/utils/localizations_generated/l10n.dart';
import 'package:theme/theme.dart';

/// A mixin that provides various context-dependent variables to the widget tree.
mixin ContextStateMixin<T extends StatefulWidget> on State<T> {
  /// The current theme of the app.
  late AppThemeData theme;

  /// The current text theme of the app.
  late AppTypographyData textTheme;

  /// The current color scheme of the app.
  late AppColorsData colors;

  /// The current media query data of the app.
  late MediaQueryData mediaQuery;

  /// The padding of the current display screen.
  late EdgeInsets padding;

  /// The view padding of the current display screen.
  late EdgeInsets viewPadding;

  /// The localizations of the app.
  late AppLocalizations localizations;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  void openEndDrawer() => scaffoldKey.currentState?.openEndDrawer();

  final ScrollController scrollController = ScrollController();

  /// Whether to skip initializing the context-dependent variables.
  // ps: this is workaround just to prevent call init in app page because app page context don't have material context.
  bool get skipInit => false;

  GlobalKey appBarKey = GlobalKey();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!skipInit) {
      _init(context);
    }
  }

  /// Initializes the variables.
  void _init(BuildContext context) {
    localizations = context.localizations;
    mediaQuery = context.mediaQuery;
    padding = mediaQuery.padding;
    viewPadding = mediaQuery.viewPadding;
    theme = AppTheme.of(context);
    textTheme = theme.typography;
    colors = theme.colors;
  }
}
