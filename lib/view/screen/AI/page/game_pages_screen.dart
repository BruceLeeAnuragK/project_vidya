import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class GamePagesScreen extends StatefulWidget {
  const GamePagesScreen({super.key});

  @override
  State<GamePagesScreen> createState() => _GamePagesScreenState();
}

List gameLinkList = [
  "https://regal-choux-0509e4.netlify.app/",
  "https://glowing-centaur-968266.netlify.app/",
  "https://dreamy-vacherin-36a05e.netlify.app/",
  "https://lambent-druid-1943be.netlify.app/",
];

class _GamePagesScreenState extends State<GamePagesScreen> {
  @override
  Widget build(BuildContext context) {
    String link = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: Uri.parse(link),
        ),
      ),
    );
  }
}
