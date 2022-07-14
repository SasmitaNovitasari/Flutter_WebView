import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:webview_flutter/webview_flutter.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter WebView',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyWebView(),
    );
  }
}

class MyWebView extends StatelessWidget {
  const MyWebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String url = "https://www.google.com";
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Expanded(
                child: WebView(
                  initialUrl: url,
                  javascriptMode: JavascriptMode.unrestricted,
                ),
              ),
            ],
          ),
        )
    );
  }
}
