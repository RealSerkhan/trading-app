import 'package:auto_route/auto_route.dart';
import 'package:beneficiary/app/app_router.gr.dart';

import 'package:beneficiary/base/presentation/pages/core_pages/base_web_view.dart';
import 'package:beneficiary/features/trading/presentation/pages/symbols_page.dart';
import 'package:beneficiary/features/user/presentation/pages/user_page.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: SplashRoute.page),
        AutoRoute(path: UserPage.routeName, page: UserRoute.page),
        AutoRoute(path: SymbolsPage.routeName, page: SymbolsRoute.page),
        AutoRoute(path: BaseWebViewPage.routePath, page: BaseWebViewRoute.page),
      ];
}

// flutter packages pub run build_runner build
// flutter pub run build_runner build --delete-conflicting-outputs
