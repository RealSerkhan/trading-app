import 'package:flutter/material.dart';

/// A mixin that provides various context-dependent variables to the widget tree.
mixin AppMixin<T extends StatefulWidget> on State<T> {
  /// Whether to skip initializing the context-dependent variables.
  // ps: this is workaround just to prevent call init in app page because app page context don't have material context.

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _init(context);
  }

  /// Initializes the variables.
  void _init(BuildContext context) {}
}
