import 'package:flutter/material.dart';
import 'package:beneficiary/base/presentation/utils/localizations_generated/l10n.dart';
import 'package:beneficiary/base/presentation/widgets/button.dart';

class RetryButton extends StatelessWidget {
  const RetryButton({super.key, required this.onRetry});
  final Function() onRetry;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(AppLocalizations.of(context).something_went_wrong),
        const SizedBox(height: 15),
        CustomButton(
          color: Colors.red,
          fillWidth: false,
          onPressed: () {
            onRetry.call();
          },
          text: 'AppLocalizations.of(context).retry',
        ),
      ],
    );
  }
}
