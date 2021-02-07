import 'package:flutter/material.dart';

class WidgetButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column'),
      ),
      body: Column(
        children: [
          RaisedButton(
              child : Text('RaisedButton'),
              color : Colors.orange,
              onPressed : () {
                // 실행될 코드
              }
          ),
          FlatButton(
              child : Text('FlatButton'),
              onPressed : () {
                // 실행될 코드
              }
          ),
          IconButton(
              icon : Icon(Icons.add),
              color : Colors.red,
              iconSize : 100.0,
              onPressed : () {
                // 실행될 코드
              }
          ),
          FloatingActionButton(
              child : Icon(Icons.add),
              onPressed : () {}
          )
        ],
      ),
    );
  }
}
