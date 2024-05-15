import 'package:data_guardian/download_data_screen.dart';
import 'package:data_guardian/remote_control_screen.dart';
import 'package:data_guardian/settings_screen.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart'; // Ensure you import the HomeScreen
import 'about_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Data Guardian',
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/downloadData': (context) => DownloadDataScreen(),
          '/remoteControl': (context) => RemoteControlScreen(),
          '/settings': (context) =>
              SettingsScreen(), //defining the route for the settings screen
          '/about': (context) =>
              AboutScreen(), //Defining the route for the about screen.
        });
  }
}
