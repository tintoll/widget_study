import 'package:flutter/material.dart';

class WidgetSingleChildScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = List.generate(100, (index) => index).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('SingleChildScrollView'),
      ),
      body: SingleChildScrollView(
        child: ListBody(
          children: items.map((item) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('$item'),
          )).toList(),
        ),
      )
    );
  }
}
