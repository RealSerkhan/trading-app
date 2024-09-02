import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

enum LoadingIndicatorType { page, custom, adaptive, ios }

class LoadingIndicator extends StatefulWidget {
  const LoadingIndicator(
      {super.key, this.type = LoadingIndicatorType.adaptive, this.color});
  final LoadingIndicatorType type;
  final Color? color;

  @override
  State<LoadingIndicator> createState() => _LoadingIndicatorState();
}

class _LoadingIndicatorState extends State<LoadingIndicator>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: _progressWidget(context));
  }

  Widget _progressWidget(BuildContext context) {
    switch (widget.type) {
      case LoadingIndicatorType.page:
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator.adaptive(
              strokeWidth: 3,
              backgroundColor: Platform.isIOS ? widget.color : null,
              valueColor: AlwaysStoppedAnimation<Color>(
                  widget.color ?? AppTheme.of(context).colors.borderColor),
            ),
          ),
        );
      case LoadingIndicatorType.adaptive:
        return CircularProgressIndicator.adaptive(
          strokeWidth: 3,
          backgroundColor: Platform.isIOS ? widget.color : null,
          valueColor: AlwaysStoppedAnimation<Color>(
              widget.color ?? AppTheme.of(context).colors.borderColor),
        );
      case LoadingIndicatorType.ios:
        return const CupertinoActivityIndicator();
      case LoadingIndicatorType.custom:
        return CircularProgressIndicator(
          strokeWidth: 4,
          valueColor: AlwaysStoppedAnimation<Color>(
              widget.color ?? AppTheme.of(context).colors.borderColor),
        );

      default:
        return const CupertinoActivityIndicator();
    }
  }
}
