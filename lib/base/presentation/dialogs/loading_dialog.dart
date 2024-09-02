import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsiveness/responsiveness.dart';

Future<T?> showLoadingDialogWithCallback<T>(
    BuildContext context, Future<T?> callback,
    {String? message}) async {
  final GlobalKey<State> alertKey = GlobalKey<State>();

  showGeneralDialog(
    context: context,
    barrierDismissible: false,
    pageBuilder: (BuildContext context, animation, secondaryAnimation) {
      return LoadingAlertBody(alertKey: alertKey);
    },
    transitionBuilder: (context, animation, secondaryAnimation, child) =>
        LoadingAlertAnimation(
      animation: animation,
      secondaryAnimation: secondaryAnimation,
      child: child,
    ),
  );

  try {
    final result = await callback;
    if (alertKey.currentContext != null) {
      Navigator.of(alertKey.currentContext!, rootNavigator: true).pop();
    }
    return result;
  } catch (e) {
    if (alertKey.currentContext != null) {
      Navigator.of(alertKey.currentContext!, rootNavigator: true).pop();
    }
  }
  return null;
}

Future<T?> showLoadingDialog<T>(BuildContext context,
    {String? message, GlobalKey<State<StatefulWidget>>? alertKey}) async {
  showGeneralDialog(
    context: context,
    barrierDismissible: false,
    pageBuilder: (BuildContext context, animation, secondaryAnimation) {
      return LoadingAlertBody(alertKey: alertKey);
    },
    transitionBuilder: (context, animation, secondaryAnimation, child) =>
        LoadingAlertAnimation(
      animation: animation,
      secondaryAnimation: secondaryAnimation,
      child: child,
    ),
  );

  return null;
}

class LoadingAlertAnimation extends StatelessWidget {
  const LoadingAlertAnimation({
    required this.animation,
    required this.secondaryAnimation,
    required this.child,
    super.key,
  });
  final Widget child;
  final Animation<double> animation;
  final Animation<double> secondaryAnimation;
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(
          sigmaX: 4 * animation.value, sigmaY: 4 * animation.value),
      child: Container(
        color: const Color(0x01000000),
        child: child,
      ),
    );
  }
}

class LoadingAlertBody extends StatelessWidget {
  const LoadingAlertBody({
    super.key,
    this.alertKey,
    this.child,
  });

  final GlobalKey<State<StatefulWidget>>? alertKey;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          key: alertKey ?? key,
          padding: const EdgeInsets.all(8),
          constraints: BoxConstraints(maxWidth: 60.h, maxHeight: 60.h),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: Stack(children: [
              const CircularProgressIndicator.adaptive(),
              child ?? const SizedBox.shrink(),
            ]),
          ),
        ),
      ),
    );
  }
}
