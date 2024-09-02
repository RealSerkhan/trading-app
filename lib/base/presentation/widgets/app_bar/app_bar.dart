import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsiveness/responsiveness.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';
import 'package:beneficiary/base/presentation/utils/resources/resources.dart';
import 'package:beneficiary/base/presentation/widgets/texts/title3.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    required this.title,
    this.leading,
    this.actions,
    this.automaticallyImplyLeading = true,
    super.key,
  });
  final String title;
  final Widget? leading;
  final List<Widget>? actions;
  final bool automaticallyImplyLeading;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: automaticallyImplyLeading,
      centerTitle: true,
      backgroundColor: context.colors.background,
      leading: leading ??
          (automaticallyImplyLeading
              ? IconButton(
                  onPressed: () => context.router.popForced(),
                  icon: SvgPicture.asset(
                    Resources.vectors.back,
                    height: 14.h,
                  ))
              : null),
      title: Title3(text: title),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
