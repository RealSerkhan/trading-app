// test/trading_remote_data_source_test.dart
import 'package:beneficiary/base/data/sources/base_remote_source.dart';
import 'package:beneficiary/features/trading/data/sources/trading_remote_source.dart';
import 'package:dart_kit/dart_kit.dart';
import 'package:mockito/annotations.dart';

import '../../../test_helpers/remote_source_helpers.dart';

@GenerateMocks([BaseRemoteSource])
String _fixture(String name) => 'test/features/trading/sources/fixtures/$name.json';

void main() {
  testRemoteSourceApi('success get carts',
      fixture: _fixture('symbol_fixture'),
      build: TradingRemoteDataSourceImpl.new,
      act: (source) => source.getSymbols(symbolName: 'Oadna'),
      expect: (response) => response.isNotEmpty && response.isNotNull);
}
