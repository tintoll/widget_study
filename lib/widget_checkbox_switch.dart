import 'package:flutter/material.dart';

class WidgetCheckboxSwitch extends StatefulWidget {
  @override
  _WidgetCheckboxSwitchState createState() => _WidgetCheckboxSwitchState();
}

class _WidgetCheckboxSwitchState extends State<WidgetCheckboxSwitch> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column'),
      ),
      body: Column(
        children: [
          Checkbox(
            value: _isChecked,
            onChanged: (value) {
              setState(() {
                _isChecked = value;
              });
            },
          ),
          SizedBox(
            height: 40,
          ),
          Switch(
            value: _isChecked,
            onChanged: (value) {
              setState(() {
                _isChecked = value;
              });
            },
          )
        ],
      ),
    );
  }
}
