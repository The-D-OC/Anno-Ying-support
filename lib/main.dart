import 'package:flutter/material.dart';
import 'chat_bot.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'One Iota Support',
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  final String chatbotUrl =
      'https://www.chatbot.com/preview/?widgetId=657887a14118780006ff4431'; // Replace with your chatbot URL

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'lib/assets/homepage.png', // Replace with your image path
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ChatBotWebView(chatbotUrl: chatbotUrl),
                    ),
                  );
                },
                icon: const Icon(Icons.chat), 
                iconSize: 36.0, 
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
