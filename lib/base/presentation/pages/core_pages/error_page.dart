import 'package:flutter/material.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';
import 'package:beneficiary/base/presentation/widgets/button.dart';
import 'package:beneficiary/base/presentation/widgets/page_gradient.dart';
import 'package:responsiveness/responsiveness.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({required this.onRetry, super.key});
  final Function() onRetry;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageGradient(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: BaseErrorWidget(onRetry: onRetry)),
      ),
    );
  }
}

class BaseErrorWidget extends StatelessWidget {
  const BaseErrorWidget({
    super.key,
    required this.onRetry,
  });

  final Function() onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomButton(
        onPressed: onRetry,
        text: context.localizations.retry,
      ),
    );
  }
}
