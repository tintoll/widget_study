import 'package:flutter/material.dart';

class WidgetStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column'),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            color: Colors.green,
            width: 80,
            height: 80,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            color: Colors.blue,
            width: 60,
            height: 60,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
          ),
        ],
      ),
    );
  }
}
