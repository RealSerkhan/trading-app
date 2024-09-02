import 'package:dart_kit/dart_kit.dart';
import 'package:flutter/cupertino.dart';

/// A mixin that provides search functionality to the widget tree.
mixin SearchMixin<T extends StatefulWidget> on State<T> {
  /// A debouncer used to limit the frequency of search calls.
  final Debouncer _debouncer =
      Debouncer(duration: const Duration(milliseconds: 200));

  /// A focus node for the search field.
  final FocusNode searchFocusNode = FocusNode();

  /// A controller for the search field.
  late TextEditingController searchController;

  /// The last query entered into the search field.
  String? _lastQuery = '';

  /// Callback function called when a search is performed.
  void onSearch(String query);

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController()..addListener(_handleTyping);
  }

  @override
  void dispose() {
    searchController.dispose();
    searchFocusNode.dispose();
    super.dispose();
  }

  /// Handles typing in the search field by calling [onSearch] with the current search query.
  void _handleTyping() {
    _debouncer.run(() {
      if (_lastQuery == searchController.text) {
        return;
      }
      _lastQuery = searchController.text;
      onSearch(searchController.text);
    });
  }
}
