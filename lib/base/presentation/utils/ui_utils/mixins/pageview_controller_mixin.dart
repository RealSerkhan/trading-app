import 'package:flutter/material.dart';

/// A mixin that provides a [PageController] to the widget tree and allows for page changes.
mixin PageViewControllerMixin<T extends StatefulWidget> on State<T> {
  /// The [PageController] used to change pages.
  late final PageController pageController;

  /// The index of the currently displayed page.
  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  /// Callback function called when the page changes.
  void onPageChanged(int index) {
    currentPageIndex = index;
    setState(() {});
  }

  /// change current page to the given [pageIndex].
  Future<void> changePage(int pageIndex) {
    return pageController
        .animateToPage(pageIndex,
            duration: const Duration(milliseconds: 300), curve: Curves.linear)
        .then((value) => setState(() => currentPageIndex = pageIndex));
  }
}
