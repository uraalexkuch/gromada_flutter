import 'dart:async';

import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class WebViewTrue extends StatefulWidget {

  @override
  _WebViewExampleState createState() => _WebViewExampleState();
}

class _WebViewExampleState extends State<WebViewTrue> {

  final Completer<WebViewController> _controller =
  Completer<WebViewController>();
  bool isLoading = true;


  @override
  void initState() {
    super.initState();
    dynamic src=Get.arguments!;
    print(src);
  }

  @override
  Widget build(BuildContext context) {
    dynamic src=Get.arguments!;
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
            initialUrl:src,
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
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
          isLoading
              ? Center(
            child: Container(
              decoration: BoxDecoration(
                color: HexColor("#005BAA"),
              ),
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(top: 40.0.h),
                  child: Column(children: [

                    CircularProgressIndicator(
                      backgroundColor: HexColor('#FFD947'),
                    ),
                    Text(
                      "Зачекайте,завантажуємо дані",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: "Helvetica",
                        fontSize: 20.sp,
                        color: HexColor('#FFD947'),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          )
              : Stack(),
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