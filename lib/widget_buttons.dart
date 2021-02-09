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
              child: Text('RaisedButton'),
              color: Colors.orange,
              onPressed: () {
                // 실행될 코드
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('타이틀'),
                      content: SingleChildScrollView(
                        child: ListView(
                          children: [Text('콘텐츠 영억입니다.'), Text('OK를 누르면 닫힙니다.')],
                        ),
                      ),
                      actions: [
                        FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('OK')),
                        FlatButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('OK')),
                      ],
                    );
                  },
                );
              }),
          FlatButton(
              child: Text('FlatButton'),
              onPressed: () {
                // 실행될 코드
              }),
          IconButton(
              icon: Icon(Icons.add),
              color: Colors.red,
              iconSize: 100.0,
              onPressed: () {
                // 실행될 코드
              }),
          FloatingActionButton(child: Icon(Icons.add), onPressed: () {})
        ],
      ),
    );
  }
}
