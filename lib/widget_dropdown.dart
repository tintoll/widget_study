import 'package:flutter/material.dart';

class WidgetDropdown extends StatefulWidget {
  @override
  _WidgetDropdownState createState() => _WidgetDropdownState();
}

class _WidgetDropdownState extends State<WidgetDropdown> {
  var _valueList = ["첫번째", "두번째", "세번째"];
  var _selectedValue = "첫번째";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column'),
      ),
      body: Column(
        children: [
          DropdownButton(
            value: _selectedValue,
            items: _valueList.map((value) {
              return DropdownMenuItem(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                _selectedValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
