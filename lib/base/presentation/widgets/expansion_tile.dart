import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsiveness/responsiveness.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';
import 'package:beneficiary/base/presentation/utils/resources/resources.dart';

class CustomExpansionTile extends StatefulWidget {
  const CustomExpansionTile({
    super.key,
    required this.title,
    required this.body,
    this.collapsedBackgroundColor,
    this.backgroundColor,
    this.tilePadding,
    this.shape,
  });
  final String title;
  final Widget body;
  final Color? collapsedBackgroundColor;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? tilePadding;
  final ShapeBorder? shape;

  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  bool isOpened = false;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      shape: widget.shape ??
          LinearBorder(
              side: BorderSide(color: context.colors.borderColor),
              bottom: const LinearBorderEdge()),
      collapsedShape: widget.shape ??
          LinearBorder(
              side: BorderSide(color: context.colors.borderColor),
              bottom: const LinearBorderEdge()),
      backgroundColor: widget.backgroundColor ?? Colors.transparent,
      collapsedBackgroundColor:
          widget.collapsedBackgroundColor ?? Colors.transparent,
      title: Text(
        widget.title,
        style: context.textTheme.body2
            .copyWith(color: context.colors.textSubmarineGrey),
      ),
      tilePadding:
          widget.tilePadding ?? const EdgeInsets.symmetric(horizontal: 0),
      childrenPadding: EdgeInsets.only(bottom: 16.h),
      trailing: AnimatedRotation(
        turns: isOpened ? 0.5 : 0,
        duration: Durations.medium3,
        child: SvgPicture.asset(Resources.vectors.arrowDown),
      ),
      onExpansionChanged: (value) {
        isOpened = value;
        setState(() {});
      },
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      expandedAlignment: Alignment.centerLeft,
      children: [widget.body],
    );
  }
}
