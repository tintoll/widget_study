import 'package:flutter/material.dart';

class WidgetRadio extends StatefulWidget {
  @override
  _WidgetRadioState createState() => _WidgetRadioState();
}

enum Gender { MAN, WOMAN }

class _WidgetRadioState extends State<WidgetRadio> {
  Gender _gender = Gender.MAN;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column'),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('남자'),
            leading: Radio(
              onChanged: (value) {
                setState(() {
                  _gender = value;
                });
              },
              value: Gender.MAN,
              groupValue: _gender,
            ),
          ),
          ListTile(
            title: Text('여자'),
            leading: Radio(
              onChanged: (value) {
                setState(() {
                  _gender = value;
                });
              },
              value: Gender.WOMAN,
              groupValue: _gender,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          RadioListTile(
            title: Text('남자'),
            value: Gender.MAN,
            groupValue: _gender,
            onChanged: (value) {
              setState(() {
                _gender = value;
              });
            },
          ),
          RadioListTile(
            title: Text('여자'),
            value: Gender.WOMAN,
            groupValue: _gender,
            onChanged: (value) {
              setState(() {
                _gender = value;
              });
            },
          )
        ],
      ),
    );
  }
}
