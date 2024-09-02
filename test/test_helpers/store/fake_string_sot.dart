import 'package:beneficiary/base/data/stock/app_disk_cache.dart';

class FakeStringSourceOfTruth extends AppDiskCache {
  @override
  Future<List<String>> getKeysByPrefix(String keyPrefix) async => [];
}
