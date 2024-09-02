import 'package:dart_kit/dart_kit.dart';
import 'package:flutter_test/flutter_test.dart';

Matcher isDataResult<T>(T result) => _IsDataResult<T>(result);

class _IsDataResult<T> extends Matcher {
  const _IsDataResult(this.actualData);

  final T actualData;
  @override
  bool matches(Object? item, Map matchState) => item is Result<T> && item.isData && item.getDataOrNull()! == actualData;

  @override
  Description describe(Description description) {
    return description;
  }
}

StreamMatcher emitsResultsInOrder<T>(Iterable<Result<T>> matchers) {
  final streamMatchers = matchers.map(emits).toList();
  if (streamMatchers.length == 1) {
    return streamMatchers.first;
  }

  final description = 'do the following in order:\n'
      '${streamMatchers.map((matcher) => matcher.description)}';

  return StreamMatcher((queue) async {
    for (var i = 0; i < streamMatchers.length; i++) {
      final matcher = streamMatchers[i];
      final result = await matcher.matchQueue(queue);
      if (result == null) {
        continue;
      }

      var newResult = "didn't ${matcher.description}";
      if (result.isNotEmpty) {
        newResult += newResult.contains('\n') ? '\n' : ' ';
        newResult += 'because it $result';
      }
      return newResult;
    }
    return null;
  }, description);
}
