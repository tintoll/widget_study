import 'package:flutter/material.dart';

class WidgetCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          elevation: 4.0,
          child: SizedBox(
            width: 200,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
