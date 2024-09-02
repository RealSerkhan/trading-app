import 'package:flutter/material.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';
import 'package:beneficiary/base/presentation/widgets/texts/body3.dart';
import 'package:beneficiary/base/presentation/widgets/texts/title2.dart';

class TitleWithAction extends StatelessWidget {
  const TitleWithAction(
      {super.key,
      required this.title,
      required this.actionName,
      required this.onActionClicked,
      this.padding});
  final String title;
  final String actionName;
  final Function onActionClicked;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Row(
        children: [
          Expanded(child: Title2(text: title)),
          TextButton(
              style: const ButtonStyle(alignment: Alignment.centerRight),
              onPressed: () => onActionClicked.call(),
              child: Body3(
                text: actionName,
                color: context.colors.primaryColor,
              ))
        ],
      ),
    );
  }
}
