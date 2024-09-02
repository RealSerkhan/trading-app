import 'dart:ui';

import 'package:flutter/material.dart';

mixin ScreenLoader<T extends StatefulWidget> on State<T> {
  bool isLoading = false;
  static Widget? _globalLoader;
  static const double _globalLoadingBgBlur = 5.0;

  /// starts the [loader]
  void startLoading() {
    setState(() {
      isLoading = true;
    });
  }

  /// stops the [loader]
  void stopLoading() {
    setState(() {
      isLoading = false;
    });
  }

  /// override [loadingBgBlur] if you wish to change blur value in specific view
  double? loadingBgBlur() {
    return null;
  }

  double _loadingBgBlur() {
    return loadingBgBlur() ?? ScreenLoader._globalLoadingBgBlur;
  }

  /// override [loader] if you wish to add custom loader in specific view
  Widget? loader() {
    return null;
  }

  Widget _loader() {
    return loader() ??
        ScreenLoader._globalLoader ??
        const CircularProgressIndicator();
  }

  Widget _buildLoader() {
    if (isLoading) {
      return Container(
        color: Colors.transparent,
        child: Center(
          child: _loader(),
        ),
      );
    } else {
      return Container();
    }
  }

  Widget screen(BuildContext context) => const SizedBox.shrink();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        screen(context),
        if (!isLoading) _buildLoader(),
        if (isLoading)
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: _loadingBgBlur(),
              sigmaY: _loadingBgBlur(),
            ),
            child: _buildLoader(),
          ),
      ],
    );
  }
}
