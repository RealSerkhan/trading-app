import 'package:dart_kit/dart_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../ui-models/data_status_enum.dart';

class PaginatedListView<T> extends StatefulWidget {
  PaginatedListView(
      {required this.items,
      required this.builder,
      required this.shimmerChild,
      this.loadMore,
      this.seperatedBuilder,
      this.noItemsWidget,
      this.noMoreItems,
      this.isLast = false,
      this.status = DataStatus.initial,
      this.pageSize = 20,
      this.scrollThreshold = 400,
      super.key})
      : isSliver = false,
        controller = ScrollController();
  const PaginatedListView.sliver(
      {required this.items,
      required this.builder,
      required this.shimmerChild,
      this.loadMore,
      required this.controller,
      this.seperatedBuilder,
      this.noItemsWidget,
      this.noMoreItems,
      this.isLast = false,
      this.status = DataStatus.initial,
      this.pageSize = 20,
      this.scrollThreshold = 400,
      super.key})
      : isSliver = true;
  final List<T> items;
  final Widget Function(BuildContext, dynamic) builder;

  final Widget Function(BuildContext)? seperatedBuilder;

  final Widget shimmerChild;
  final Widget? noItemsWidget;
  final VoidCallback? loadMore;
  final int pageSize;
  final bool isLast;
  final bool isSliver;
  final DataStatus status;
  final double scrollThreshold;
  final VoidCallback? noMoreItems;
  final ScrollController controller;

  @override
  State<PaginatedListView> createState() => _PaginatedListViewState();
}

class _PaginatedListViewState extends State<PaginatedListView> {
  bool _isLoading = false;
  late Debouncer _debounceTimer;
  int get getItemsCount {
    if (isInitial) {
      return 10;
    }
    if (noItems) {
      return 1; //to show no result
    }

    return widget.items.length + (widget.isLast ? 0 : 1);
  }

  bool get isInitial => widget.status.isLoading && widget.items.isEmpty || widget.status.isInitial;
  bool get isLoadingMore => widget.status.isLoading && widget.items.isNotEmpty;
  bool get noItems => !(widget.status.isLoading || widget.status.isInitial) && widget.items.isEmpty;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onScroll);
    _debounceTimer = Debouncer(duration: const Duration(milliseconds: 500));
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onScroll);
    _debounceTimer.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (widget.controller.position.pixels > widget.controller.position.maxScrollExtent - widget.scrollThreshold) {
      if (widget.items.length % widget.pageSize == 0 && !widget.isLast) {
        _debounceTimer.run(() {
          _loadMore();
        });
      } else {
        widget.noMoreItems?.call();
      }
    }
  }

  void _loadMore() {
    if (!_isLoading && widget.loadMore != null) {
      _isLoading = true;
      widget.loadMore!.call();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    _isLoading = widget.status.isLoading;

    if (!widget.isSliver) {
      return ListView.builder(
        controller: widget.controller,
        itemCount: getItemsCount,
        itemBuilder: _builder,
      );
    } else {
      return AnimationLimiter(
        child: SliverList(
          key: ValueKey(getItemsCount),
          delegate: SliverChildBuilderDelegate(
              (context, index) => AnimationConfiguration.staggeredGrid(
                  position: index,
                  duration: const Duration(milliseconds: 375),
                  columnCount: 1,
                  child: SlideAnimation(
                      horizontalOffset: 200,
                      child: FadeInAnimation(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisSize: MainAxisSize.min,
                            children: [_builder(context, index), _seperatedBuilder(context, index)]),
                      ))),
              childCount: getItemsCount),
        ),
      );
    }
  }

  Widget _builder(BuildContext context, int index) {
    if (isInitial) {
      return widget.shimmerChild;
    }
    if (!_isLoading && widget.items.isEmpty) {
      return widget.noItemsWidget ?? const SizedBox.shrink();
    }

    if (index >= widget.items.length) {
      return widget.shimmerChild;
    } else {
      return widget.builder.call(context, widget.items[index]);
    }
  }

  Widget _seperatedBuilder(BuildContext context, int index) {
    return widget.seperatedBuilder?.call(context) ?? const SizedBox.shrink();
  }
}
