import 'package:flutter/material.dart';

class WidgetListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            trailing: Icon(Icons.navigate_next),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.event),
            title: Text('Event'),
            trailing: Icon(Icons.navigate_next),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.camera),
            title: Text('Camera'),
            trailing: Icon(Icons.navigate_next),
            onTap: (){},
          ),
        ],
      )
    );
  }
}
