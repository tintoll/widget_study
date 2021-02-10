import 'package:flutter/material.dart';

class WidgetButtons extends StatefulWidget {
  @override
  _WidgetButtonsState createState() => _WidgetButtonsState();
}

class _WidgetButtonsState extends State<WidgetButtons> {
  DateTime _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column'),
      ),
      body: Column(
        children: [
          RaisedButton(
              child: Text('RaisedButton/AlertDialog'),
              color: Colors.orange,
              onPressed: () {
                // 실행될 코드
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('타이틀'),
                      content: SingleChildScrollView(
                        child: ListBody(
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
                            child: Text('Cancel')),
                      ],
                    );
                  },
                );
              }),
          FlatButton(
              child: Text('FlatButton/DatePicker'),
              onPressed: () {
                // 실행될 코드
                Future<DateTime> selectedDate = showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2008),
                    lastDate: DateTime(2030),
                  builder: (BuildContext context, Widget child) {
                      return Theme(
                        data : ThemeData.dark(),
                        child: child,
                      );
                  }

                );

                selectedDate.then((dateTime) {
                  setState(() {
                  _selectedTime = dateTime;
                  });
                });
              }),
          IconButton(
              icon: Icon(Icons.add),
              color: Colors.red,
              iconSize: 100.0,
              onPressed: () {
                // 실행될 코드
              }),
          FloatingActionButton(child: Icon(Icons.add), onPressed: () {},
          ),
          Text('$_selectedTime')
        ],
      ),
    );
  }
}
