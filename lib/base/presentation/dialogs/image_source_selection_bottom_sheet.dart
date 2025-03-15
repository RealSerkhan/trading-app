import 'package:beneficiary/base/presentation/widgets/texts/body2.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:beneficiary/base/presentation/constants/app_paddings.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';
import 'package:beneficiary/base/presentation/widgets/spaces/big_height.dart';
import 'package:beneficiary/base/presentation/widgets/spaces/smal_width.dart';
import 'package:beneficiary/base/presentation/widgets/spaces/small_height.dart';

import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class PhotoBottomSheet extends StatelessWidget {
  const PhotoBottomSheet({
    super.key,
    required this.onSelect,
  });
  final Function(ImageSource imageSource) onSelect;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          color: context.colors.background,
        ),
        child: Padding(
          padding: Paddings.paddingAll8,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: StatefulBuilder(
              builder: (context, setState) {
                return Padding(
                  padding: Paddings.pagePadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 3,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1000), color: context.colors.borderColor),
                        ),
                      ),
                      ZoomTapAnimation(
                        onTap: () => onSelect.call(ImageSource.camera),
                        child: Column(
                          children: [
                            BigHeight(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.camera_alt_rounded,
                                  color: context.colors.textBlackKnight,
                                ),
                                SmallWidth(
                                  width: 4,
                                ),
                                Body2(
                                  text: "take photo",
                                  color: context.colors.textBlackKnight,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                )
                              ],
                            ),
                            SmallHeight(
                              height: 1.4,
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: context.colors.borderColor,
                      ),
                      ZoomTapAnimation(
                        onTap: () => onSelect.call(ImageSource.gallery),
                        child: Column(
                          children: [
                            SmallHeight(
                              height: 1.4,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.photo,
                                  color: context.colors.textBlackKnight,
                                ),
                                SmallWidth(
                                  width: 4,
                                ),
                                Body2(
                                  text: 'Select from gallery',
                                  color: context.colors.textBlackKnight,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      BigHeight(
                        height: 8,
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ));
  }
}
