// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';
import 'package:beneficiary/base/presentation/utils/ext/int_ext.dart';
import 'package:beneficiary/base/presentation/utils/resources/resources.dart';
import 'package:responsiveness/responsiveness.dart';

import 'package:theme/theme.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {this.onChanged,
      this.title,
      this.hasBorder = true,
      this.focusNode,
      this.hint,
      this.style,
      this.autoFocus,
      this.initString,
      this.formatters,
      this.enabled,
      this.prefix,
      this.customPrefix,
      this.textColor,
      this.keyBoardType = TextInputType.text,
      this.textInputAction = TextInputAction.done,
      this.validator,
      this.onSubmit,
      this.controller,
      this.hintStyle,
      this.borderColor,
      this.borderRadius,
      this.onTap,
      this.suffix,
      this.maxLines,
      this.minLines,
      this.maxLength,
      this.showCounter = false,
      this.fillColor,
      this.contentPadding,
      this.obsecureText = false,
      this.constraints,
      this.readOnly = false,
      this.formKey,
      super.key});

  final String? title;
  final String? hint;
  final bool? autoFocus;
  final String? initString;
  final Function(String)? onChanged;
  final Widget? prefix;
  final Widget? suffix;
  final Widget? customPrefix;
  final List<TextInputFormatter>? formatters;
  final bool? enabled;
  final Color? textColor;
  final Color? borderColor;
  final BorderRadius? borderRadius;
  final FocusNode? focusNode;
  final TextInputType keyBoardType;
  final TextInputAction? textInputAction;
  final String? Function(String? v)? validator;
  final TextEditingController? controller;
  final bool? hasBorder;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final VoidCallback? onTap;
  final bool obsecureText;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final bool showCounter;
  final Color? fillColor;
  final Function(String)? onSubmit;
  final EdgeInsets? contentPadding;
  final BoxConstraints? constraints;
  final bool readOnly;
  final GlobalKey<FormState>? formKey;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool isVisible;
  @override
  void initState() {
    isVisible = widget.obsecureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final AppThemeData appThemeData = AppTheme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (widget.title != null) ...[
          Text(widget.title!,
              style:
                  appThemeData.typography.body1.copyWith(height: 20.h / 12.w)),
          SizedBox(height: 9.h)
        ],
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.customPrefix != null) ...[
              widget.customPrefix!,
              12.width
            ],
            Expanded(
              child: TextFormField(
                focusNode: widget.focusNode,
                readOnly: widget.readOnly,
                textInputAction: widget.textInputAction,
                initialValue: widget.initString,
                obscureText: isVisible,
                style: widget.style ??
                    appThemeData.typography.body2.copyWith(
                      color: widget.textColor ??
                          appThemeData.colors.textSubmarineGrey,
                    ),
                enabled: widget.enabled ?? true,
                controller: widget.controller,
                autofocus: widget.autoFocus ?? false,
                onChanged: widget.onChanged,
                inputFormatters: widget.formatters ?? [],
                keyboardType: widget.keyBoardType,
                validator: widget.validator,
                onTap: widget.onTap,
                maxLength: widget.maxLength,
                maxLines: widget.maxLines,
                minLines: widget.minLines ?? 1,
                onFieldSubmitted: widget.onSubmit,
                decoration: InputDecoration(
                  constraints: widget.constraints,
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 16.w, right: 6.w),
                    child: widget.prefix ?? const SizedBox.shrink(),
                  ),
                  prefixIconConstraints: widget.prefix == null
                      ? BoxConstraints(
                          minWidth: 12.w,
                          minHeight: 0,
                        )
                      : const BoxConstraints(
                          minWidth: 16,
                          minHeight: 16,
                        ),
                  counterText: widget.showCounter ? null : '',
                  counterStyle: context.textTheme.body3,
                  suffixIconConstraints: widget.prefix == null
                      ? BoxConstraints(
                          minWidth: 12.w,
                          minHeight: 0,
                        )
                      : const BoxConstraints(
                          minWidth: 16,
                          minHeight: 16,
                        ),
                  suffixIcon: widget.obsecureText &&
                          TextInputType.visiblePassword == widget.keyBoardType
                      ? IconButton(
                          onPressed: () {
                            isVisible = !isVisible;

                            setState(() {});
                          },
                          icon: isVisible
                              ? SvgPicture.asset(
                                  Resources.vectors.eyeOff,
                                  color: appThemeData.colors.textBlackKnight
                                      .withOpacity(0.5),
                                  height: 20.h,
                                )
                              : SvgPicture.asset(
                                  Resources.vectors.eyeOn,
                                  height: 20.h,
                                  color: appThemeData.colors.textBlackKnight
                                      .withOpacity(0.5),
                                ))
                      : widget.suffix,
                  filled: true,
                  hintText: widget.hint ?? '',
                  hintStyle: widget.hintStyle ??
                      appThemeData.typography.body2
                          .copyWith(color: appThemeData.colors.grey),
                  errorStyle: widget.hintStyle ??
                      appThemeData.typography.body2.copyWith(
                          color: Colors.red,
                          fontSize: 10.w,
                          height: 12.h / 10.w),
                  fillColor:
                      widget.fillColor ?? context.colors.secondaryBluishWhite,
                  contentPadding: widget.contentPadding ??
                      EdgeInsets.symmetric(vertical: 20.h),
                  errorBorder: OutlineInputBorder(
                    borderRadius:
                        widget.borderRadius ?? BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.redAccent,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius:
                        widget.borderRadius ?? BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: appThemeData.colors.borderColor,
                      width: 1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius:
                        widget.borderRadius ?? BorderRadius.circular(12),
                    borderSide: !widget.hasBorder!
                        ? BorderSide.none
                        : BorderSide(
                            color: widget.borderColor ??
                                appThemeData.colors.textBlackKnight
                                    .withOpacity(0.1),
                            width: 0.5,
                          ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius:
                        widget.borderRadius ?? BorderRadius.circular(12),
                    borderSide: !widget.hasBorder!
                        ? BorderSide.none
                        : BorderSide(
                            color: widget.borderColor ??
                                appThemeData.colors.borderColor,
                            width: 1,
                          ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius:
                        widget.borderRadius ?? BorderRadius.circular(12),
                    borderSide: !widget.hasBorder!
                        ? BorderSide.none
                        : BorderSide(
                            color: widget.borderColor ??
                                appThemeData.colors.primaryColor,
                            width: 1,
                          ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:
                        widget.borderRadius ?? BorderRadius.circular(12),
                    borderSide: !widget.hasBorder!
                        ? BorderSide.none
                        : BorderSide(
                            color: widget.borderColor ??
                                appThemeData.colors.borderColor,
                            width: 1,
                          ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
