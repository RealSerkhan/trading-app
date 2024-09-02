import 'dart:io';

import 'package:dart_kit/dart_kit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:beneficiary/base/domain/enums/attachment_type.dart';
import 'package:beneficiary/base/domain/enums/file_source.dart';
import 'package:beneficiary/base/domain/models/attachment/attachment.dart';
import 'package:beneficiary/base/presentation/ui-models/page_type_enum.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';
import 'package:beneficiary/base/presentation/utils/resources/resources.dart';
import 'package:beneficiary/base/presentation/widgets/attachment_button.dart';

import 'package:responsiveness/responsiveness.dart';
import 'package:beneficiary/base/presentation/widgets/base_image.dart';

class ImageSelectionWidget extends StatelessWidget {
  const ImageSelectionWidget(
      {required this.attachment,
      required this.onImageSelected,
      this.widgetType = WidgetType.creating,
      this.fit = BoxFit.cover,
      this.shape,
      super.key});
  final Attachment? attachment;
  final BoxFit fit;
  final WidgetType widgetType;
  final BoxShape? shape;
  final Function(Attachment?) onImageSelected;
  Attachment get _attachment => attachment ?? Attachment();

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: widgetType == WidgetType.viewing,
      child: AttachmentButton(
        attachmentTypes: const [AttachmentType.image],
        attachment: attachment,
        onFileSelected: (data, type) {
          onImageSelected.call(Attachment(
              type: type, localPath: data, source: FileSource.local));
        },
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(10.h),
              child: Container(
                width: double.maxFinite,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    shape: shape ?? BoxShape.rectangle,
                    color: context.colors.grey.withOpacity(0.2),
                    borderRadius:
                        shape != null ? null : BorderRadius.circular(10)),
                child: _attachment.localPath.isNotNullOrNotEmpty
                    ? Stack(
                        children: [
                          if (_attachment.type == AttachmentType.image)
                            Positioned.fill(
                              child: Image.file(
                                File(_attachment.localPath!),
                                fit: fit,
                              ),
                            ),
                        ],
                      )
                    : _attachment.url.isNotNullOrNotEmpty
                        ? Stack(
                            children: [
                              Positioned.fill(
                                child: BaseImage(
                                  image: _attachment.url!,
                                  fit: fit,
                                ),
                              ),
                            ],
                          )
                        : AspectRatio(
                            aspectRatio: 9 / 12,
                            child: Center(
                              child: Icon(
                                Icons.photo_size_select_actual_outlined,
                                color: context.colors.textBlackKnight,
                                size: 32.sp,
                              ),
                            ),
                          ),
              ),
            ),
            Positioned(
                bottom: 10,
                right: 10,
                child: Container(
                    height: 40.h,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: context.colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: SvgPicture.asset(Resources.vectors.camera),
                    )))
          ],
        ),
      ),
    );
  }
}
