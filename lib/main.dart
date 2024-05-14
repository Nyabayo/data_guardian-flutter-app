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
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
          '/about': (context) =>
              AboutScreen(), //Defining the route for the about screen.
        });
  }
}
