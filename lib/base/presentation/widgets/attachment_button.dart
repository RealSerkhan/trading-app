// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:beneficiary/base/domain/enums/attachment_type.dart';
import 'package:beneficiary/base/domain/models/attachment/attachment.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';
import 'package:beneficiary/base/presentation/utils/localizations_generated/l10n.dart';
import 'package:beneficiary/base/presentation/utils/resources/resources.dart';
import 'package:responsiveness/responsiveness.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AttachmentButton extends StatefulWidget {
  const AttachmentButton({
    required this.onFileSelected,
    this.attachmentTypes = const [
      AttachmentType.audio,
      AttachmentType.image,
    ],
    this.child,
    this.attachment,
    this.color,
    super.key,
  });
  final Function(String data, AttachmentType type) onFileSelected;
  final Color? color;
  final Widget? child;
  final Attachment? attachment;
  final List<AttachmentType> attachmentTypes;

  @override
  State<AttachmentButton> createState() => _AttachmentButtonState();
}

class _AttachmentButtonState extends State<AttachmentButton> {
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    if (widget.child != null) {
      return GestureDetector(
          onTap: () {
            selectAttachmentDialog(context);
          },
          child: widget.child!);
    }
    return IconButton(
        onPressed: () {
          selectAttachmentDialog(context);
        },
        icon: SvgPicture.asset(
          Resources.vectors.attachment,
          height: 20.h,
          color: widget.color ?? context.colors.grey,
        ));
  }

  attachMedia(AttachmentType type, ImageSource? source) async {
    if (type == AttachmentType.image) {
      await _picker.pickImage(source: source!).then((image) async {
        if (image != null) {
          CroppedFile? selectedFile = await ImageCropper().cropImage(
            sourcePath: image.path,
            maxWidth: 1024,
            maxHeight: 1024,
            // aspectRatio: CropAspectRatio(ratioX: ratioX, ratioY: ratioY),
            // aspectRatioPresets: [
            //   CropAspectRatioPreset.square,
            //   CropAspectRatioPreset.ratio3x2,
            //   CropAspectRatioPreset.original,
            //   CropAspectRatioPreset.ratio4x3,
            //   CropAspectRatioPreset.ratio16x9
            // ],
          );

          if (selectedFile != null) {
            widget.onFileSelected.call(selectedFile.path, AttachmentType.image);
          }
        }
      }).onError((dynamic e, s) {
        // FirebaseCrashlytics.instance.recordError(e, s, reason: 'select image error');
      });
    }
  }

  void selectAttachmentDialog(BuildContext buildContext) {
    cupertinoAttachmentDialog(
      buildContext,
      AppLocalizations.of(buildContext).select,
      [
        if (widget.attachmentTypes.contains(AttachmentType.document))
          CupertinoActionSheetActionTemplate(
            text: context.localizations.select_document,
            action: () async {
              attachMedia(AttachmentType.document, null);
            },
          ),
        if (widget.attachmentTypes.contains(AttachmentType.video))
          CupertinoActionSheetActionTemplate(
            text: ' ${AppLocalizations.of(buildContext).select_video}',
            action: () async {
              attachMedia(AttachmentType.video, ImageSource.gallery);
            },
          ),
        if (widget.attachmentTypes.contains(AttachmentType.image))
          CupertinoActionSheetActionTemplate(
            text: AppLocalizations.of(buildContext).choose_your_picture,
            action: () async {
              attachMedia(AttachmentType.image, ImageSource.gallery);
            },
          ),
        if (widget.attachmentTypes.contains(AttachmentType.video))
          CupertinoActionSheetActionTemplate(
            text:
                '${AppLocalizations.of(buildContext).camera} ${AppLocalizations.of(buildContext).select_video}',
            action: () async {
              attachMedia(AttachmentType.video, ImageSource.camera);
            },
          ),
        if (widget.attachmentTypes.contains(AttachmentType.image))
          CupertinoActionSheetActionTemplate(
            text: AppLocalizations.of(buildContext).take_picture,
            action: () async {
              attachMedia(AttachmentType.image, ImageSource.camera);
              // Navigator.pop(context);
            },
          ),
      ],
    );
  }
}

void cupertinoAttachmentDialog(
    mainContext, String title, List<CupertinoActionSheetActionTemplate> items) {
  ///todo test and implement
  showCupertinoModalPopup(
      context: mainContext,
      builder: (BuildContext context) => CupertinoActionSheet(
            title: Text(title),
            actions: items.map((item) {
              return CupertinoActionSheetAction(
                child: Text(item.text),
                onPressed: () async {
                  item.action!();
                  Navigator.pop(context);
                },
              );
            }).toList(),
            cancelButton: CupertinoActionSheetAction(
              child: Text(
                AppLocalizations.of(mainContext).cancel,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ));
}

class CupertinoActionSheetActionTemplate {
  late String text;
  late VoidCallback? action;

  CupertinoActionSheetActionTemplate({
    required this.text,
    this.action,
  });
}
