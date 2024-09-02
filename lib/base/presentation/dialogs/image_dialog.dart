import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:beneficiary/base/domain/enums/file_source.dart';
import 'package:beneficiary/base/domain/models/attachment/attachment.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';
import 'package:responsiveness/responsiveness.dart';
import 'package:beneficiary/base/presentation/widgets/buttons/circle_button.dart';

class ImageViewDialog extends StatelessWidget {
  ImageViewDialog({required this.attachment, super.key});
  final Attachment attachment;
  show(BuildContext context) {
    // Navigator.of(context).push(MaterialPageRoute(
    //   builder: (context) => ImageViewDialog(attachment: attachment),
    // ));
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      barrierLabel: '',
      useRootNavigator: true,
      builder: (context) {
        return build(context);
      },
    );
  }

  final zoomTransformationController = TransformationController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () => _resetZoom(),
      child: Center(
        child: Stack(
          children: [
            GestureDetector(
              onTap: () => context.router.maybePop(),
              child: Container(
                height: context.mediaQuery.size.height,
                width: context.mediaQuery.size.width,
                decoration: BoxDecoration(
                    color: context.colors.textBlackKnight.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(16)),
              ),
            ),
            Positioned.fill(
              child: Center(
                child: Builder(
                  builder: (context) {
                    return PhotoView(
                        imageProvider: attachment.source == FileSource.remote
                            ? CachedNetworkImageProvider(attachment.url!)
                            : AssetImage(attachment.localPath!)
                                as ImageProvider);
                  },
                ),
              ),
            ),
            Positioned(
              right: 20,
              top: context.mediaQuery.viewPadding.top + 60.h,
              child: CircleButton(
                  height: 30,
                  color: context.colors.primaryColor,
                  icon: Icon(
                    Icons.close,
                    color: context.colors.white,
                  ),
                  onTap: () => context.router.maybePop()),
            )
          ],
        ),
      ),
    );
  }

  void _resetZoom() {
    const zoomFactor = 1.0;
    const xTranslate = 0.0;
    const yTranslate = 0.0;
    zoomTransformationController.value.setEntry(0, 0, zoomFactor);
    zoomTransformationController.value.setEntry(1, 1, zoomFactor);
    zoomTransformationController.value.setEntry(2, 2, zoomFactor);
    zoomTransformationController.value.setEntry(0, 3, -xTranslate);
    zoomTransformationController.value.setEntry(1, 3, -yTranslate);
  }
}
