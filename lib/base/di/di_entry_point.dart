import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:beneficiary/base/di/di_entry_point.config.dart';

final GetIt getIt = GetIt.I;

@InjectableInit(
  initializerName: r'$initDependencyInjection',
  preferRelativeImports: true,
  asExtension: false,
)
Future<GetIt> initDependencyInjection({String? environment}) async =>
    $initDependencyInjection(
      getIt,
      environment: environment,
    );
