// In settings_screen.dart
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed: () {}, child: Text('Privacy Settings')),
            ElevatedButton(onPressed: () {}, child: Text('Account Settings')),
            ElevatedButton(
                onPressed: () {}, child: Text('Notification Settings')),
          ],
        ),
      ),
    );
  }
}
