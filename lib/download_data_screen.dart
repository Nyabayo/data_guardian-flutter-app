import 'package:flutter/material.dart';

class DownloadDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Download Data')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Select the platform to download your data:', style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: Text('Google')),
            ElevatedButton(onPressed: () {}, child: Text('Facebook')),
            ElevatedButton(onPressed: () {}, child: Text('Instagram')),
            ElevatedButton(onPressed: () {}, child: Text('Twitter')),
          ],
        ),
      ),
    );
  }
}
