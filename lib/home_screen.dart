import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Data Guardian')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome to Data Guardian',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text('Your privacy, our priority.', style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/downloadData'),
                child: Text('Download Data')),
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/remoteControl'),
                child: Text('Remote Control')),
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/settings'),
                child: Text('Settings')),
            ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/about'),
                child: Text('About')),
          ],
        ),
      ),
    );
  }
}
