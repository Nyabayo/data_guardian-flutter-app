import 'package:flutter/material.dart';

class RemoteControlScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Remote Control')),
      body: Center(
        child: Text('Interface to remotely control your device'),
      ),
    );
  }
}
