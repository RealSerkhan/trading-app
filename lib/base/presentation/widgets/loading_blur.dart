library blur;

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:responsiveness/responsiveness.dart';

///blur it's [child]
///[blur] is the value of blur effect, higher the blur more the blur effect (default value = 5)
///[blurColor] is the color of blur effect (default value = Colors.white)
///[borderRadius] is the radius of the child to be blurred
///[colorOpacity] is the opacity of the blurColor (default value = 0.5)
///[overlay] is the widget that can be stacked over blurred widget
///[alignment] is the alignment geometry of the overlay (default value = Alignment.center)
class LoadingBlur extends StatelessWidget {
  const LoadingBlur({
    required this.child,
    super.key,
    this.blur = 5,
    this.blurColor = Colors.white,
    this.isLoading = false,
    this.borderRadius,
    this.colorOpacity = 0.5,
    this.overlay,
    this.alignment = Alignment.center,
  });

  final Widget child;
  final double blur;
  final Color blurColor;
  final BorderRadius? borderRadius;
  final double colorOpacity;
  final Widget? overlay;
  final AlignmentGeometry alignment;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    if (!isLoading) {
      return child;
    }
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.zero,
      child: Stack(
        children: [
          child,
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
              child: ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.blue, Colors.blue.withOpacity(0)],
                      stops: const [0.4, 0.75]).createShader(rect);
                },
                blendMode: BlendMode.dstOut,
                child: Container(
                  decoration: BoxDecoration(
                    color: blurColor.withOpacity(colorOpacity),
                  ),
                  alignment: alignment,
                  child: overlay,
                ),
              ),
            ),
          ),
          Center(
            child: SizedBox(
              height: 55.h,
              width: 55.h,
              child: const CircularProgressIndicator(
                strokeWidth: 5,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}

///extension of [LoadingBlur] on [Widget] to blur it's child
///same as a [LoadingBlur] widget but you can use this as an extension on any widget which
///you want to have a blur effect
///blur is the value of blur effect, higher the blur more the blur effect (default value = 5)
extension BlurExtension on Widget {
  LoadingBlur blurred({
    double blur = 5,
    Color blurColor = Colors.white,
    BorderRadius? borderRadius,
    double colorOpacity = 0.5,
    Widget? overlay,
    AlignmentGeometry alignment = Alignment.center,
  }) {
    return LoadingBlur(
      blur: blur,
      blurColor: blurColor,
      borderRadius: borderRadius,
      colorOpacity: colorOpacity,
      overlay: overlay,
      alignment: alignment,
      child: this,
    );
  }
}

///extension of [LoadingBlur] on [Widget] to give the frost effect to background of it's child:-
///creates frosted glass effect: blurs the background of the child given to it
///blur is the value of blur effect, higher the blur more the blur effect (default value = 5)
///frostColor is the color of the frost effect (default value = Colors.white)
///frostOpacity is the opacity of the frostColor (default value = 0.0)
///height is the height of the frost effect
///width is the width of the frost effect
///borderRadius is the radius of the frost effect
///alignment is the alignment geometry of the child (default value = Alignment.center)
///padding is the child padding (default value = EdgeInsets.zero)
extension FrostExtension on Widget {
  LoadingBlur frosted({
    double blur = 5,
    Color frostColor = Colors.white,
    AlignmentGeometry alignment = Alignment.center,
    double? height,
    double? width,
    double frostOpacity = 0.0,
    BorderRadius? borderRadius,
    EdgeInsetsGeometry padding = EdgeInsets.zero,
  }) {
    return LoadingBlur(
      blur: blur,
      blurColor: frostColor,
      borderRadius: borderRadius,
      alignment: alignment,
      overlay: Padding(
        padding: padding,
        child: this,
      ),
      child: Container(
        height: height,
        width: width,
        padding: padding,
        color: frostColor.withOpacity(frostOpacity),
        child: height == null || width == null ? this : const SizedBox.shrink(),
      ),
    );
  }
}
