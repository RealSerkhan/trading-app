import 'dart:math';
import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsiveness/responsiveness.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';
import 'package:beneficiary/base/presentation/utils/ext/int_ext.dart';
import 'package:beneficiary/base/presentation/utils/resources/resources.dart';
import 'package:beneficiary/base/presentation/widgets/interface_widget.dart';

class CustomAnimatedAppBar extends StatefulWidget {
  const CustomAnimatedAppBar(
      {super.key,
      required this.scrollController,
      this.title,
      this.actions,
      this.leading,
      this.body,
      this.autoImplLeading = true,
      this.height});
  final ScrollController scrollController;
  final Widget? leading;
  final Widget? body;
  final Widget? title;
  final List<Widget>? actions;
  final double? height;
  final bool autoImplLeading;

  @override
  State<CustomAnimatedAppBar> createState() => _CustomAnimatedAppBarState();
}

class _CustomAnimatedAppBarState extends State<CustomAnimatedAppBar> {
  double _blur = 0.0; // Initial blur intensity

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(_resizeWidget);
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(_resizeWidget);
    widget.scrollController.dispose();
    super.dispose();
  }

  void _resizeWidget() {
    // Update the size based on the scroll position
    double offset = widget.scrollController.offset;
    // Example formula for size adjustment

    _blur = min(30.0, offset / 20);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: widget.scrollController,
        builder: (context, child) {
          return Container(
              width: double.maxFinite,
              constraints: BoxConstraints(
                minHeight: (widget.height ?? 56.h) +
                    context.mediaQuery.viewPadding.top, //status bar height
              ),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(12.sp))),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: _blur, sigmaY: _blur),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: context.mediaQuery.viewPadding.top,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(minHeight: 56.h),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: Row(
                            children: [
                              widget.leading != null
                                  ? widget.leading!
                                  : widget.autoImplLeading
                                      ? SizedBox(
                                          width: 48.w,
                                          child: AppInterfaceWidget(
                                            child: IconButton(
                                              alignment: Alignment.centerLeft,
                                              icon: SvgPicture.asset(
                                                  Resources.vectors.back),
                                              onPressed: () =>
                                                  context.router.popForced(),
                                            ),
                                          ))
                                      : SizedBox(
                                          width: 48.w,
                                        ),
                              Expanded(child: Center(child: widget.title)),
                              ...(widget.actions ?? [SizedBox(width: 48.w)])
                            ],
                          ),
                        ),
                      ),
                    ),
                    if (widget.body != null) ...[
                      12.height,
                      widget.body!,
                      8.height,
                    ],
                  ],
                ),
              ));
        });
  }
}
