import 'package:flutter/material.dart';

class WidgetEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              onTap: () {
                print('GestureDetector click');
              },
              child: Text('GestureDetector'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: () {
                print('InkWell click');
              },
              child: Text('Inkwell'),
            ),
          )
        ],
      ),
    );
  }
}
