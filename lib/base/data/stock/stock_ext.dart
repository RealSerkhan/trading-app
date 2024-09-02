// ignore_for_file: library_private_types_in_public_api

import 'package:dart_kit/dart_kit.dart';
import 'package:stock/stock.dart';

typedef _ResultFetcher<Key, Value> = Future<Result<Value>> Function(Key);
typedef _ResultFetcherWithNoKey<Value> = Future<Result<Value>> Function();

extension StockStreamExt<T> on Stream<StockResponse<T>> {
  Stream<Result<T>> mapToResult() => map((it) => it.when(
        onLoading: (o) => Result.loading(o.asResultOrigin),
        onData: (o, data) => Result.data(o.asResultOrigin, data),
        onError: (o, err, st) => Result.error(o.asResultOrigin, err, st),
      ));
}

extension StockFutureExt<Key, Value> on _ResultFetcher<Key, Value> {
  Fetcher<Key, Value> asFetcher() => Fetcher.ofFuture<Key, Value>(
        (Key key) => this(key).then((it) => it.requireData()),
      );
}

extension StockFutureExt2<Value> on _ResultFetcherWithNoKey<Value> {
  Fetcher<Key, Value> asFetcher<Key>() => Fetcher.ofFuture<Key, Value>(
        (Key key) => this().then((it) => it.requireData()),
      );
}

extension StockOriginExt<T> on ResponseOrigin {
  ResultOrigin get asResultOrigin {
    switch (this) {
      case ResponseOrigin.sourceOfTruth:
        return ResultOrigin.local;
      case ResponseOrigin.fetcher:
        return ResultOrigin.network;
    }
  }
}
