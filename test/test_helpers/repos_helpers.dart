import 'package:beneficiary/base/data/stock/app_disk_cache.dart';

class FakeAppDiskCache extends AppDiskCache {
  @override
  Future<List<String>> getKeysByPrefix(String keyPrefix) {
    throw UnimplementedError();
  }
}
