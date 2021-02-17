import 'package:flutter/material.dart';
import 'package:widget_study/Person.dart';

class NaviPage extends StatelessWidget {
  final Person person;

  NaviPage({@required this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NaviPage'),
      ),
      body: Column(
        children: [
          RaisedButton(
            child: Text('이전페이지'),
            onPressed: () {
              Navigator.pop(context, person);
            },
          ),
          Text('${person.name} | ${person.age} ')
        ],
      ),
    );
  }
}
