import 'dart:io';

import 'package:flutter/material.dart';
import 'package:beneficiary/base/presentation/dialogs/base_dialog.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';
import 'package:beneficiary/base/presentation/widgets/button.dart';

import 'package:url_launcher/url_launcher.dart';

class UpdatePopUp extends StatelessWidget {
  const UpdatePopUp({super.key});
  show(BuildContext context) {
    BaseDialog.show(
        context: context,
        title: context.localizations.update_required,
        contentText: context
            .localizations.you_have_to_update_in_order_to_use_our_service,
        child: build(context));
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: false,
        child: CustomButton(
          onPressed: () {
            final Uri link;
            if (Platform.isAndroid) {
              link = Uri.parse(
                  'https://play.google.com/store/apps/details?id=com.creativeadvancedtechnologies.EParliament.production');
            } else if (Platform.isIOS) {
              link = Uri.parse(
                  'https://apps.apple.com/us/app/أنا-البرلمان/id1556378010');
            } else {
              // Fluttertoast.showToast(msg: "No Platform founded!");
              return;
            }
            launchUrl(link, mode: LaunchMode.externalApplication);
          },
          text: context.localizations.update,
        ));
  }
}
