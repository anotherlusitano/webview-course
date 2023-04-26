import 'package:flutter/material.dart';
import 'web_view_container.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final _links = ['https://google.com'];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _links.map((link) => _urlButton(context, link)).toList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _urlButton(BuildContext context, String url) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: TextButton(
        style: ButtonStyle(
            padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0)),
        child: Text(url),
        onPressed: () => _handleURLButtonPress(context, url),
      ),
    );
  }

  void _handleURLButtonPress(BuildContext context, String url) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => WebViewContainer(url)));
  }
}
