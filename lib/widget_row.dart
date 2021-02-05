import 'package:flutter/material.dart';

class WidgetRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row'),
      ),
      body: Row(
        mainAxisSize: MainAxisSize.max, // 가로로 꽉 채우기
        mainAxisAlignment: MainAxisAlignment.center, // 가로 방향으로 가운데 정렬하기
        crossAxisAlignment: CrossAxisAlignment.center, // 세로 방향으로 가운데 정렬하기
        children: [
          Container(
            color: Colors.red,
            width: 50,
            height: 50,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            color: Colors.green,
            width: 50,
            height: 50,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
          ),
          Container(
            color: Colors.blue,
            width: 50,
            height: 50,
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
          ),
        ],
      ),
    );
  }
}
