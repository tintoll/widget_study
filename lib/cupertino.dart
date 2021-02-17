import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoWidget extends StatefulWidget {

  @override
  _CupertinoWidgetState createState() => _CupertinoWidgetState();
}

class _CupertinoWidgetState extends State<CupertinoWidget> {
  var _isOn = false;
  var _items = List.generate(10, (index) => index);
  var result;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    result = _items[0];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('쿠퍼티노 디자인'),
      ),
      body: Column(
        children: [
          CupertinoSwitch(
              value: _isOn,
              onChanged: (bool value) {
                setState(() {
                  _isOn = value;
                });
              }),
          CupertinoButton(
            borderRadius: BorderRadius.circular(16.0),
            color: Colors.orange,
            child: Text('alert dialog'),
            onPressed: () {

              _showCupertinoDialog();
            },
          ),
          CupertinoButton(
            child: Text('picker'),
            onPressed: () {
              _showCupertinoPicker();
            },
          ),
          Text('selected $result')
        ],
      ),
    );
  }

  _showCupertinoDialog() {
    showDialog(context: context, builder: (context) => CupertinoAlertDialog(
      title: Text('제목'),
      content: Text('내용'),
      actions: [
        CupertinoDialogAction(child: Text('Cancel')),
        CupertinoDialogAction(child: Text('OK'), onPressed: () {
          Navigator.of(context).pop(); // 다이얼로그 닫기
        },),
      ],
    ));
  }

  _showCupertinoPicker() async {

    await showCupertinoModalPopup(
      context : context,
      builder: (context) =>  Container(
        height: 200.0,
        child: CupertinoPicker(
          children: _items.map((e) => Text('No. $e')).toList(),
          itemExtent: 50.0, // 항목 1개의 높이
          onSelectedItemChanged: (int value) {
            setState(() {
              result = _items[value];
            });
          },
        ),
      )
    );

  }
}
