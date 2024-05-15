import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Guardian'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Navigation Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.cloud_download),
              title: Text('Download Data'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/downloadData');
              },
            ),
            ListTile(
              leading: Icon(Icons.control_camera),
              title: Text('Remote Control'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/remoteControl');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settings');
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/about');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome to Data Guardian',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text('Your privacy, our priority.', style: TextStyle(fontSize: 20)),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
