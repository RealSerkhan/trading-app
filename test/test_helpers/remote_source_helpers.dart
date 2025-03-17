import 'dart:convert';
import 'dart:io';

import 'package:beneficiary/base/data/sources/base_remote_source.dart';
import 'package:beneficiary/base/networking/dio_http_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart' as test;
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:http_sdk/http_sdk.dart';
import 'package:meta/meta.dart';
import 'package:beneficiary/base/networking/http_client.dart';

final anyEndPoint = RegExp(r'(\w+)');

class FakeHttpSdk extends test.Fake implements HttpSdk {}

Object readFixture(String path) => jsonDecode(File(path).readAsStringSync());

HttpClient createMockedHttpClient<T>(void Function(DioAdapter) mocker) {
  final dio = Dio();
  final dioAdapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());

  dio.httpClientAdapter = dioAdapter;
  mocker(dioAdapter);

  return DioHttpClient(dio);
}

@isTest
void testRemoteSourceApi<T extends BaseRemoteSource, R>(
  String description, {
  required T Function(HttpClient client, HttpSdk sdk) build,
  required Future<R> Function(T source) act,
  required bool Function(R response) expect,
  required String fixture,
  int statusCode = 200,
  dynamic tags,
}) {
  test.test(
    description,
    () async {
      // Arrange
      final mockedHttpClient = createMockedHttpClient((mocker) {
        mocker
          ..onGet(anyEndPoint, (server) => server.reply(statusCode, readFixture(fixture)))
          ..onPost(anyEndPoint, (server) => server.reply(statusCode, readFixture(fixture)))
          ..onDelete(anyEndPoint, (server) => server.reply(statusCode, readFixture(fixture)))
          ..onPatch(anyEndPoint, (server) => server.reply(statusCode, readFixture(fixture)))
          ..onPut(anyEndPoint, (server) => server.reply(statusCode, readFixture(fixture)));
      });

      final source = build(mockedHttpClient, FakeHttpSdk());

      // Act
      final response = await act(source);

      // assert
      test.expect(response, test.predicate((R response) => expect(response)));
    },
    tags: tags,
  );
}
