import 'package:faker_dart/faker_dart.dart';

abstract class ModelFactory<T> {
  final faker = Faker.instance;

  /// Creates a fake uuid.
  String uuid() => faker.datatype.uuid();

  /// Generate a single fake model.
  T generateFake();

  /// Generate fake list based on provided length.
  List<T> generateFakeList({required int length}) => List.generate(length, (index) => generateFake());
}
