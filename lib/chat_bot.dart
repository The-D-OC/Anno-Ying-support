import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ChatBotWebView extends StatefulWidget {
  final String chatbotUrl;

  const ChatBotWebView({Key? key, required this.chatbotUrl}) : super(key: key);

  @override
  _ChatBotWebViewState createState() => _ChatBotWebViewState();
}

class _ChatBotWebViewState extends State<ChatBotWebView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'OneIota Support',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: WebView(
        initialUrl: widget.chatbotUrl,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
