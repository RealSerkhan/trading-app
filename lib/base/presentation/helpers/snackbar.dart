// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';
import 'package:beneficiary/base/presentation/utils/resources/resources.dart';
import 'package:beneficiary/base/presentation/utils/ui_utils/mixins/context_state_mixin.dart';
import 'package:responsiveness/responsiveness.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

bool _hasSnackBar = false;

enum SnackbarType { info, error, success }

Future<void> showCustomSnackBar(
  BuildContext context, {
  Widget? child,
  ValueKey? value,
  Duration showOutAnimationDuration = const Duration(milliseconds: 400),
  Duration hideOutAnimationDuration = const Duration(milliseconds: 400),
  Duration displayDuration = const Duration(milliseconds: 3000),
  double additionalTopPadding = 16.0,
  VoidCallback? onTap,
  OverlayState? overlayState,
  String? message,
  SnackbarType type = SnackbarType.info,
}) async {
  if (context.findRenderObject() == null) {
    return;
  }
  overlayState ??= Overlay.of(context);

  OverlayEntry? overlayEntry;
  overlayEntry = OverlayEntry(
    builder: (ctx) {
      return Stack(
        children: [
          TopSnackBar(
            key: value,
            type: type,
            message: message,
            onDismissed: () {
              try {
                overlayEntry?.remove();
                overlayEntry = null;
              } catch (e) {
                debugPrint(e.toString());
              }
              _hasSnackBar = false;
            },
            showOutAnimationDuration: showOutAnimationDuration,
            hideOutAnimationDuration: hideOutAnimationDuration,
            displayDuration: displayDuration,
            additionalTopPadding: additionalTopPadding,
            onTap: () => onTap?.call(),
          ),
        ],
      );
    },
  );
  if (!_hasSnackBar && overlayEntry != null) {
    overlayState.insert(overlayEntry!);
    _hasSnackBar = true;
  }
}

/// Widget that controls all animations
class TopSnackBar extends StatefulWidget {
  const TopSnackBar({
    required this.onDismissed,
    required this.showOutAnimationDuration,
    required this.hideOutAnimationDuration,
    required this.displayDuration,
    required this.additionalTopPadding,
    required this.onTap,
    required this.type,
    this.message,
    this.child,
    super.key,
  });
  final Widget? child;
  final VoidCallback onDismissed;
  final Duration showOutAnimationDuration;
  final Duration hideOutAnimationDuration;
  final Duration displayDuration;
  final double additionalTopPadding;
  final VoidCallback onTap;
  final SnackbarType type;
  final String? message;

  @override
  State<TopSnackBar> createState() => _TopSnackBarState();
}

class _TopSnackBarState extends State<TopSnackBar>
    with SingleTickerProviderStateMixin, ContextStateMixin {
  late Animation offsetAnimation;
  late AnimationController animationController;
  late double topPosition;

  @override
  void initState() {
    topPosition = widget.additionalTopPadding;
    _setupAndStartAnimation();
    super.initState();
  }

  @override
  void dispose() {
    widget.onDismissed();

    offsetAnimation
      ..removeStatusListener((status) {})
      ..removeListener(() {});
    animationController.dispose();

    super.dispose();
  }

  Future<void> _setupAndStartAnimation() async {
    animationController = AnimationController(
      vsync: this,
      duration: widget.showOutAnimationDuration,
      reverseDuration: widget.hideOutAnimationDuration,
    );

    final Tween<Offset> offsetTween = Tween<Offset>(
      begin: const Offset(0.0, 1.0),
      end: const Offset(0.0, 0.0),
    );

    offsetAnimation = offsetTween.animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.decelerate,
        reverseCurve: Curves.decelerate,
      ),
    )..addStatusListener((status) async {
        if (status == AnimationStatus.completed) {
          await Future.delayed(widget.displayDuration);
          if (mounted) {
            animationController.reverse();

            setState(() {
              topPosition = 0;
            });
          }
        }

        if (status == AnimationStatus.dismissed) {
          widget.onDismissed.call();
        }
      });

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: widget.hideOutAnimationDuration * 1.5,
      curve: Curves.linearToEaseOut,
      bottom: topPosition,
      left: 16,
      right: 16,
      child: Material(
        type: MaterialType.transparency,
        child: SlideTransition(
          position: offsetAnimation as Animation<Offset>,
          child: Dismissible(
            key: GlobalKey(),
            direction: DismissDirection.vertical,
            onDismissed: (direction) {
              // widget.onDismissed.call();
              dispose();
            },
            child: SafeArea(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
                decoration: BoxDecoration(
                    color: colors.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x14111827),
                        blurRadius: 4,
                        offset: Offset(0, 2),
                        spreadRadius: 0,
                      )
                    ]),
                child: Row(children: [
                  widget.type == SnackbarType.error
                      ? Lottie.asset(
                          Resources.lottie.error,
                          height: 30.h,
                          width: 30.h,
                        )
                      : Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              shape: BoxShape.circle),
                          child: SvgPicture.asset(
                            Resources.vectors.success,
                            height: 20,
                            color: context.colors.background,
                          )),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      widget.message ?? '',
                      style: textTheme.heading2.copyWith(
                        color: context.colors.white,
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
