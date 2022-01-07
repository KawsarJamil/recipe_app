import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class video extends StatelessWidget {
  const video({Key? key}) : super(key: key);
  static const String path = "video";
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text(data["title"]),
        backgroundColor: Colors.red,
      ),
      body: WebView(
        initialUrl: data["youtubeUrl"],
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
