import 'package:flutter/material.dart';

class WidgetContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: Container(
        color: Colors.red,
        width: 100,
        height: 100,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.all(8.0),
      ),
    );
  }
}
