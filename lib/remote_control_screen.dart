import 'package:flutter/material.dart';

class RemoteControlScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Remote Control'),
      ),
      body: Stack(
        fit: StackFit
            .expand, // Ensures the stack covers the entire body of the scaffold.
        children: <Widget>[
          // Background image
          Image.asset(
            'images/remote.jpg', // Ensure the image path is correct in your assets.
            fit: BoxFit.cover, // Ensures the image covers the entire screen.
          ),
          // Scrollable column to ensure the UI is scrollable when content exceeds the screen size.
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  bottom: 50), // Adds padding at the bottom for better spacing.
              child: Column(
                mainAxisAlignment: MainAxisAlignment
                    .end, // Aligns children to the bottom of the container.
                children: <Widget>[
                  _buildActionButton(
                    context,
                    'Lock Device',
                    'Device locked successfully.',
                    Icons.lock,
                  ),
                  _buildActionButton(
                    context,
                    'Locate Device',
                    'Device location sent to your email.',
                    Icons.location_searching,
                  ),
                  _buildActionButton(
                    context,
                    'Wipe Device Data',
                    'Are you sure you want to wipe all data on your device? This action cannot be undone.',
                    Icons.delete_forever,
                    isDestructiveAction: true,
                  ),
                  _buildActionButton(
                    context,
                    'Ring Device',
                    'Your device will start ringing. Use this feature to locate your device nearby.',
                    Icons.notifications_active,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(
      BuildContext context, String title, String content, IconData icon,
      {bool isDestructiveAction = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 8.0), // Adds vertical spacing between buttons.
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: isDestructiveAction
              ? Colors.red
              : Theme.of(context).primaryColor, // Text color.
          minimumSize: Size(double.infinity,
              50), // Makes the button stretch to full width and sets a minimum height.
        ),
        onPressed: () =>
            _showDialog(context, title, content, isDestructiveAction),
        child: Text(title),
      ),
    );
  }

  void _showDialog(BuildContext context, String title, String content,
      bool isDestructiveAction) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: <Widget>[
          if (isDestructiveAction)
            TextButton(
              onPressed: () {
                // TODO: Implement the actual destructive action here.
                Navigator.of(context).pop();
              },
              child: Text("Confirm"),
            ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(isDestructiveAction ? "Cancel" : "OK"),
          ),
        ],
      ),
    );
  }
}
