import 'package:flutter/material.dart';
import 'package:widget_study/widget_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WidgetList(),
    );
  }
}

class WidgetList extends StatelessWidget {
  const WidgetList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('위젯 리스트'),
        ),
        body: ListView(
          children: [
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WidgetContainer()),
                );
              },
              title: Text('Container'),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              onTap: () {},
              title: Text('Column'),
            ),
          ],
        ));
  }
}
