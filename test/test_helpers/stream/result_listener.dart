import 'dart:async';

class ResultListener<T> {
  ResultListener(this._stream, {bool startListener = true}) {
    if (startListener) {
      listenChanges();
    }
  }

  final Stream<T> _stream;
  final List<T> _resultList = [];
  StreamSubscription<T>? _subscription;

  void listenChanges() {
    _subscription = _stream.listen(_resultList.add);
  }

  Future<List<T>> stopAndGetResult() async {
    await _subscription?.cancel();
    return _resultList;
  }
}
