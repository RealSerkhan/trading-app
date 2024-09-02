import 'package:cached_network_image/cached_network_image.dart';
import 'package:dart_kit/dart_kit.dart';
import 'package:flutter/material.dart';
import 'package:responsiveness/responsiveness.dart';
import 'package:beneficiary/base/presentation/utils/resources/resources.dart';

class BaseImage extends StatelessWidget {
  const BaseImage(
      {super.key,
      required this.image,
      this.fit = BoxFit.cover,
      this.height,
      this.width});
  final String? image;
  final double? height;
  final double? width;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 30.h,
      width: width ?? 30.h,
      child: image.isNotNullOrNotEmpty
          ? CachedNetworkImage(
              imageUrl: image!,
              height: height ?? 30.h,
              fit: fit,
              width: width ?? 30.h,
              errorWidget: (context, url, error) => Image.asset(
                Resources.rasters.appIcon,
                height: height ?? 30.h,
                width: width ?? 30.h,
              ),
            )
          : Image.asset(
              Resources.rasters.appIcon,
              height: height ?? 30.h,
              width: width ?? 30.h,
            ),
    );
  }
}
