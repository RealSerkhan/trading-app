import 'package:flutter/material.dart';

/// A mixin that provides a [TabController] to the widget tree and allows for tab changes.
mixin TabBarControllerMixin<T extends StatefulWidget> on State<T> {
  /// The [TabController] used to change tabs.
  late TabController tabController;

  /// The duration of the tab change animation.
  Duration get animationDuration => kTabScrollDuration;

  /// The index of the initially displayed tab.
  int initialIndex = 0;

  /// The index of the currently displayed tab.
  int _currentPageIndex = 0;

  /// The number of tabs in the tab bar.
  int get length;

  /// The [TickerProvider] to use for the tab change animation.
  TickerProvider get vsync;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: initialIndex,
      length: length,
      animationDuration: animationDuration,
      vsync: vsync,
    )..addListener(() {
        if (_currentPageIndex != tabController.index) {
          _currentPageIndex = tabController.index;
          onTabChanged(_currentPageIndex);
          setState(() {});
        }
      });
  }

  /// Callback function called when the current tab changes.
  void onTabChanged(int index) {}

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
