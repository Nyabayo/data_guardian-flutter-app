import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About Data Guardian')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('About Data Guardian:', style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            Text(
                'Data Guardian is an app designed to enhance your data privacy by providing you with tools to understand and control the data collected by internet giants.',
                style: TextStyle(fontSize: 14)),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: Text('Contact Us')),
          ],
        ),
      ),
    );
  }
}
