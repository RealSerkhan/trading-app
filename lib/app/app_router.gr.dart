// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:beneficiary/base/presentation/pages/core_pages/base_web_view.dart'
    as _i2;
import 'package:beneficiary/features/beneficiary/presentation/pages/add_beneficiary_page.dart'
    as _i1;
import 'package:beneficiary/features/beneficiary/presentation/pages/beneficiraries_page.dart'
    as _i3;
import 'package:beneficiary/features/beneficiary/presentation/pages/top_up_beneficiary_page.dart'
    as _i5;
import 'package:beneficiary/features/splash/presentation/screens/splash_page.dart'
    as _i4;
import 'package:beneficiary/features/user/presentation/pages/user_page.dart'
    as _i6;
import 'package:flutter/foundation.dart' as _i10;
import 'package:flutter/material.dart' as _i8;
import 'package:webview_flutter/webview_flutter.dart' as _i9;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    AddBeneficiaryRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddBeneficiaryPage(),
      );
    },
    BaseWebViewRoute.name: (routeData) {
      final args = routeData.argsAs<BaseWebViewRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.BaseWebViewPage(
          url: args.url,
          onJsMessageReceived: args.onJsMessageReceived,
          jsMethodName: args.jsMethodName,
          showAppBar: args.showAppBar,
          onPageFinished: args.onPageFinished,
          key: args.key,
        ),
      );
    },
    BeneficirariesRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.BeneficirariesPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SplashPage(),
      );
    },
    TopUpBeneficiaryRoute.name: (routeData) {
      final args = routeData.argsAs<TopUpBeneficiaryRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.TopUpBeneficiaryPage(
          beneficiaryId: args.beneficiaryId,
          key: args.key,
        ),
      );
    },
    UserRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.UserPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddBeneficiaryPage]
class AddBeneficiaryRoute extends _i7.PageRouteInfo<void> {
  const AddBeneficiaryRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AddBeneficiaryRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddBeneficiaryRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BaseWebViewPage]
class BaseWebViewRoute extends _i7.PageRouteInfo<BaseWebViewRouteArgs> {
  BaseWebViewRoute({
    required String url,
    void Function(
      _i8.BuildContext,
      _i9.JavaScriptMessage,
    )? onJsMessageReceived,
    String? jsMethodName,
    bool showAppBar = true,
    void Function(String)? onPageFinished,
    _i10.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          BaseWebViewRoute.name,
          args: BaseWebViewRouteArgs(
            url: url,
            onJsMessageReceived: onJsMessageReceived,
            jsMethodName: jsMethodName,
            showAppBar: showAppBar,
            onPageFinished: onPageFinished,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'BaseWebViewRoute';

  static const _i7.PageInfo<BaseWebViewRouteArgs> page =
      _i7.PageInfo<BaseWebViewRouteArgs>(name);
}

class BaseWebViewRouteArgs {
  const BaseWebViewRouteArgs({
    required this.url,
    this.onJsMessageReceived,
    this.jsMethodName,
    this.showAppBar = true,
    this.onPageFinished,
    this.key,
  });

  final String url;

  final void Function(
    _i8.BuildContext,
    _i9.JavaScriptMessage,
  )? onJsMessageReceived;

  final String? jsMethodName;

  final bool showAppBar;

  final void Function(String)? onPageFinished;

  final _i10.Key? key;

  @override
  String toString() {
    return 'BaseWebViewRouteArgs{url: $url, onJsMessageReceived: $onJsMessageReceived, jsMethodName: $jsMethodName, showAppBar: $showAppBar, onPageFinished: $onPageFinished, key: $key}';
  }
}

/// generated route for
/// [_i3.BeneficirariesPage]
class BeneficirariesRoute extends _i7.PageRouteInfo<void> {
  const BeneficirariesRoute({List<_i7.PageRouteInfo>? children})
      : super(
          BeneficirariesRoute.name,
          initialChildren: children,
        );

  static const String name = 'BeneficirariesRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SplashPage]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.TopUpBeneficiaryPage]
class TopUpBeneficiaryRoute
    extends _i7.PageRouteInfo<TopUpBeneficiaryRouteArgs> {
  TopUpBeneficiaryRoute({
    required String beneficiaryId,
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          TopUpBeneficiaryRoute.name,
          args: TopUpBeneficiaryRouteArgs(
            beneficiaryId: beneficiaryId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'TopUpBeneficiaryRoute';

  static const _i7.PageInfo<TopUpBeneficiaryRouteArgs> page =
      _i7.PageInfo<TopUpBeneficiaryRouteArgs>(name);
}

class TopUpBeneficiaryRouteArgs {
  const TopUpBeneficiaryRouteArgs({
    required this.beneficiaryId,
    this.key,
  });

  final String beneficiaryId;

  final _i8.Key? key;

  @override
  String toString() {
    return 'TopUpBeneficiaryRouteArgs{beneficiaryId: $beneficiaryId, key: $key}';
  }
}

/// generated route for
/// [_i6.UserPage]
class UserRoute extends _i7.PageRouteInfo<void> {
  const UserRoute({List<_i7.PageRouteInfo>? children})
      : super(
          UserRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
