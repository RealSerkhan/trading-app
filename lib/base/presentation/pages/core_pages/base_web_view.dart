import 'package:auto_route/auto_route.dart';
import 'package:dart_kit/dart_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:beneficiary/base/presentation/utils/ui_utils/animations/switchers_animation.dart';
import 'package:beneficiary/base/presentation/widgets/loading_blur.dart';
import 'package:beneficiary/base/presentation/widgets/retry_button.dart';
import 'package:webview_flutter/webview_flutter.dart';

@RoutePage()
class BaseWebViewPage extends StatelessWidget {
  const BaseWebViewPage({
    required this.url,
    this.onJsMessageReceived,
    this.jsMethodName,
    this.showAppBar = true,
    this.onPageFinished,
    super.key,
  });

  static const String routePath = '/web-view';

  final String url;
  final void Function(BuildContext, JavaScriptMessage)? onJsMessageReceived;

  final void Function(String page)? onPageFinished;

  final String? jsMethodName;
  final bool showAppBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseWebViewWidget(
        url: url,
        onJsMessageReceived: onJsMessageReceived,
        showAppBar: showAppBar,
        onPageFinished: onPageFinished,
      ),
    );
  }
}

class BaseWebViewWidget extends StatefulWidget {
  const BaseWebViewWidget({
    required this.url,
    this.onJsMessageReceived,
    this.jsMethodName,
    this.showAppBar = true,
    this.onPageFinished,
    super.key,
  });

  final String url;
  final void Function(BuildContext, JavaScriptMessage)? onJsMessageReceived;

  final void Function(String page)? onPageFinished;

  final String? jsMethodName;
  final bool showAppBar;

  @override
  State<BaseWebViewWidget> createState() => _BaseWebViewWidgetState();
}

class _BaseWebViewWidgetState extends State<BaseWebViewWidget> {
  late final WebViewController _webViewController;

  final Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers = {
    Factory(() => EagerGestureRecognizer())
  };

  final UniqueKey _webviewKey = UniqueKey();

  bool isLoading = true;
  bool isError = false;
  bool isPopped = false;

  @override
  void initState() {
    super.initState();
    _webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(_getNavigationDelegate())
      ..loadRequest(Uri.parse(widget.url));

    if (widget.jsMethodName.isNotNull && widget.onJsMessageReceived.isNotNull) {
      _webViewController.addJavaScriptChannel(
        widget.jsMethodName!,
        onMessageReceived: (jsMessage) =>
            widget.onJsMessageReceived!(context, jsMessage),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return LoadingBlur(
      // isLoading: isLoading,
      child: Stack(
        children: [
          WebViewWidget(
            key: _webviewKey,
            controller: _webViewController,
            gestureRecognizers: gestureRecognizers,
          ),
          AnimatedSwitcher2(
            showChild: isError,
            child: Center(child: RetryButton(onRetry: () => _retryLoading())),
          ),
        ],
      ),
    );
  }

  void _changeLoading(bool isLoading) {
    if (!mounted) {
      return;
    }
    if (this.isLoading != isLoading) {
      setState(() => this.isLoading = isLoading);
    }
  }

  void _retryLoading() {
    _webViewController
      ..clearCache()
      ..clearLocalStorage()
      ..loadRequest(Uri.parse(widget.url));
    if (!mounted) {
      return;
    }
    setState(() {
      isError = false;
      isLoading = true;
    });
  }

  NavigationDelegate _getNavigationDelegate() => NavigationDelegate(
      onProgress: (int progress) => _changeLoading(progress != 100),
      onUrlChange: (page) {
        widget.onPageFinished?.call(page.url ?? '');
      },
      onWebResourceError: (error) {
        //todo log exception
//         log.fatal(
//           reason: '''
// webview with url: ${widget.url} cannot load
//   code: ${error.errorCode}
//   description: ${error.description}
//   errorType: ${error.errorType}
//   isForMainFrame: ${error.isForMainFrame}
// ''',
//           error: Exception('BaseWebViewPage onWebResourceError'),
//         );

        if (mounted) {
          return;
        }
        setState(() {
          isError = true;
          isLoading = false;
        });
      });
}
