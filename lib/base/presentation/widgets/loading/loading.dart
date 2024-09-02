import 'package:flutter/cupertino.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoActivityIndicator(
        color: context.colors.textBlackKnight,
      ),
    );
  }
}
