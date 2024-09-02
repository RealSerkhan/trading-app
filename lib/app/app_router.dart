import 'package:auto_route/auto_route.dart';
import 'package:beneficiary/app/app_router.gr.dart';

import 'package:beneficiary/base/presentation/pages/core_pages/base_web_view.dart';
import 'package:beneficiary/features/beneficiary/presentation/pages/add_beneficiary_page.dart';
import 'package:beneficiary/features/beneficiary/presentation/pages/beneficiraries_page.dart';
import 'package:beneficiary/features/beneficiary/presentation/pages/top_up_beneficiary_page.dart';
import 'package:beneficiary/features/user/presentation/pages/user_page.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: SplashRoute.page),
        AutoRoute(path: UserPage.routeName, page: UserRoute.page),
        AutoRoute(
            path: BeneficirariesPage.routeName, page: BeneficirariesRoute.page),
        AutoRoute(
            path: AddBeneficiaryPage.routeName, page: AddBeneficiaryRoute.page),
        AutoRoute(
            path: TopUpBeneficiaryPage.routeName,
            page: TopUpBeneficiaryRoute.page),
        AutoRoute(path: BaseWebViewPage.routePath, page: BaseWebViewRoute.page),
      ];
}

// flutter packages pub run build_runner build
// flutter pub run build_runner build --delete-conflicting-outputs
