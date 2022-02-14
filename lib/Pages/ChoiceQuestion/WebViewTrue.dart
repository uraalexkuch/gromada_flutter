import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gromada/Pages/Load/loading.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewTrue extends StatefulWidget {
  dynamic src = Get.arguments!;
  @override
  _WebViewExampleState createState() => _WebViewExampleState();
}

class _WebViewExampleState extends State<WebViewTrue> {
  late WebViewController controller;
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
    dynamic src = Get.arguments!;
    print(src);
  }

  @override
  Widget build(BuildContext context) {
    dynamic src = Get.arguments!;
    print(src);
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Онлайн помічник'),
          // This drop down menu demonstrates that Flutter widgets can be shown over the web view.
          actions: <Widget>[
            NavigationControls(_controller.future),
          ],
        ),
        // We're using a Builder here so we have a context that is below the Scaffold
        // to allow calling Scaffold.of(context) so we can show a snackbar.
        body: Stack(children: <Widget>[
          WebView(
            initialUrl: src,
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController c) {
              _controller.future.then((value) => controller = value);
            },
            onProgress: (int progress) {
              print("WebView is loading (progress : $progress%)");
            },
            javascriptChannels: <JavascriptChannel>{
              _toasterJavascriptChannel(context),
            },
            onPageStarted: (String url) {
              print('Page started loading: $url');
            },
            onPageFinished: (finish) {
              setState(() {
                isLoading = false;
              });
              print('Page finished loading: $finish');
            },
            gestureNavigationEnabled: true,
          ),
          isLoading ? Loading() : Stack(),
        ]),
      );
    });
  }

  JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
    return JavascriptChannel(
        name: 'Toaster',
        onMessageReceived: (JavascriptMessage message) {
          // ignore: deprecated_member_use
          Scaffold.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        });
  }
}

class NavigationControls extends StatelessWidget {
  const NavigationControls(this._webViewControllerFuture)
      : assert(_webViewControllerFuture != null);

  final Future<WebViewController> _webViewControllerFuture;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<WebViewController>(
      future: _webViewControllerFuture,
      builder:
          (BuildContext context, AsyncSnapshot<WebViewController> snapshot) {
        final bool webViewReady =
            snapshot.connectionState == ConnectionState.done;
        final WebViewController? controller = snapshot.data;
        return Row(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.replay),
              onPressed: !webViewReady
                  ? null
                  : () {
                      controller!.reload();
                    },
            ),
          ],
        );
      },
    );
  }
}