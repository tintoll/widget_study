import 'package:flutter/material.dart';
import 'package:widget_study/widget_bottome_navigation_bar.dart';
import 'package:widget_study/widget_buttons.dart';
import 'package:widget_study/widget_card.dart';
import 'package:widget_study/widget_checkbox_switch.dart';
import 'package:widget_study/widget_column.dart';
import 'package:widget_study/widget_container.dart';
import 'package:widget_study/widget_etc.dart';
import 'package:widget_study/widget_grid_view.dart';
import 'package:widget_study/widget_list_view.dart';
import 'package:widget_study/widget_page_view.dart';
import 'package:widget_study/widget_row.dart';
import 'package:widget_study/widget_single_child_scroll_view.dart';
import 'package:widget_study/widget_stack.dart';
import 'package:widget_study/widget_tab.dart';
import 'package:widget_study/widget_textfield.dart';

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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WidgetColumn()),
                );
              },
              title: Text('Column'),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WidgetRow()),
                );
              },
              title: Text('Row'),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WidgetStack()),
                );
              },
              title: Text('Stack'),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WidgetSingleChildScrollView()),
                );
              },
              title: Text('SingleChildScrollView'),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WidgetListView()),
                );
              },
              title: Text('ListView'),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WidgetGridView()),
                );
              },
              title: Text('GridView'),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WidgetPageView()),
                );
              },
              title: Text('PageView'),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WidgetTab()),
                );
              },
              title: Text('Tab'),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WidgetBottomNavigationBar()),
                );
              },
              title: Text('BottomNavigationBar'),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WidgetCard()),
                );
              },
              title: Text('Card, Center, SizedBox, Padding'),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WidgetButtons()),
                );
              },
              title: Text('Buttons'),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WidgetEtc()),
                );
              },
              title: Text('Image, Icon, Progress, CircleAvatar'),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WidgetTextField()),
                );
              },
              title: Text('TextField'),
            ),
            Divider(
              height: 1,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WidgetCheckboxSwitch()),
                );
              },
              title: Text('Checkbox/Switch'),
            ),
          ],
        ));
  }
}
