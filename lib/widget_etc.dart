import 'package:flutter/material.dart';

class WidgetEtc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column'),
      ),
      body: Column(
        children: [
          CircleAvatar(
            child: Icon(Icons.person),
          ),
          CircularProgressIndicator(),
          LinearProgressIndicator(),
          Image.network('http://bit.ly/2Pvz4t8')
        ],
      ),
    );
  }
}
