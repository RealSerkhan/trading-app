import 'package:flutter/widgets.dart';
import 'package:beneficiary/base/presentation/utils/resources/resources.dart';
import 'package:responsiveness/responsiveness.dart';

import 'package:theme/theme.dart';
import 'package:beneficiary/base/presentation/widgets/base_image.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({
    super.key,
    required this.imageUrl,
    this.height,
    this.width,
    this.isEditable = false,
  });

  final String? imageUrl;
  final double? height;
  final double? width;
  final bool isEditable;

  get isImageValid => imageUrl != null && imageUrl!.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height ?? 96.h,
          width: width ?? 96.h,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
              color: AppTheme.of(context).colors.background,
              shape: BoxShape.circle,
              border:
                  Border.all(color: AppTheme.of(context).colors.contentColor)),
          child: isImageValid
              ? BaseImage(
                  image: imageUrl ?? '',
                  fit: BoxFit.cover,
                )
              : Image.asset(Resources.rasters.appIcon),
        ),
      ],
    );
  }
}
