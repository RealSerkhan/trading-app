// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:beneficiary/base/presentation/pages/core_pages/base_web_view.dart'
    as _i1;
import 'package:beneficiary/features/splash/presentation/screens/splash_page.dart'
    as _i2;
import 'package:beneficiary/features/trading/presentation/pages/symbols_page.dart'
    as _i3;
import 'package:beneficiary/features/user/presentation/pages/user_page.dart'
    as _i4;
import 'package:flutter/foundation.dart' as _i8;
import 'package:flutter/material.dart' as _i6;
import 'package:webview_flutter/webview_flutter.dart' as _i7;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    BaseWebViewRoute.name: (routeData) {
      final args = routeData.argsAs<BaseWebViewRouteArgs>();
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.BaseWebViewPage(
          url: args.url,
          onJsMessageReceived: args.onJsMessageReceived,
          jsMethodName: args.jsMethodName,
          showAppBar: args.showAppBar,
          onPageFinished: args.onPageFinished,
          key: args.key,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SplashPage(),
      );
    },
    SymbolsRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SymbolsPage(),
      );
    },
    UserRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.UserPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.BaseWebViewPage]
class BaseWebViewRoute extends _i5.PageRouteInfo<BaseWebViewRouteArgs> {
  BaseWebViewRoute({
    required String url,
    void Function(
      _i6.BuildContext,
      _i7.JavaScriptMessage,
    )? onJsMessageReceived,
    String? jsMethodName,
    bool showAppBar = true,
    void Function(String)? onPageFinished,
    _i8.Key? key,
    List<_i5.PageRouteInfo>? children,
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

  static const _i5.PageInfo<BaseWebViewRouteArgs> page =
      _i5.PageInfo<BaseWebViewRouteArgs>(name);
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
    _i6.BuildContext,
    _i7.JavaScriptMessage,
  )? onJsMessageReceived;

  final String? jsMethodName;

  final bool showAppBar;

  final void Function(String)? onPageFinished;

  final _i8.Key? key;

  @override
  String toString() {
    return 'BaseWebViewRouteArgs{url: $url, onJsMessageReceived: $onJsMessageReceived, jsMethodName: $jsMethodName, showAppBar: $showAppBar, onPageFinished: $onPageFinished, key: $key}';
  }
}

/// generated route for
/// [_i2.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SymbolsPage]
class SymbolsRoute extends _i5.PageRouteInfo<void> {
  const SymbolsRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SymbolsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SymbolsRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.UserPage]
class UserRoute extends _i5.PageRouteInfo<void> {
  const UserRoute({List<_i5.PageRouteInfo>? children})
      : super(
          UserRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
