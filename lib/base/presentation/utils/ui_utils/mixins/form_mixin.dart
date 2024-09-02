import 'package:flutter/material.dart';

/// A mixin that provides various context-dependent variables to the widget tree.
mixin FormMixin<T extends StatefulWidget> on State<T> {
  late GlobalKey<FormState> formKey;
  @override
  void initState() {
    formKey = GlobalKey<FormState>();
    super.initState();
  }
}
