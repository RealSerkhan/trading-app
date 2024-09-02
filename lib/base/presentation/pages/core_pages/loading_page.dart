import 'package:flutter/material.dart';
import 'package:beneficiary/base/presentation/widgets/page_gradient.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PageGradient(
          child: Center(child: CircularProgressIndicator.adaptive())),
    );
  }
}
