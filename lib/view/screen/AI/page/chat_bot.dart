import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: Uri.parse(
              "https://mediafiles.botpress.cloud/a5cf75bb-d679-4d34-b40e-e2c67d70be03/webchat/bot.html"),
        ),
      ),
    );
  }
}
