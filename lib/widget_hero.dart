import 'package:flutter/material.dart';
import 'package:widget_study/widget_hero_detail.dart';

class WidgetHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => HeroDetailPage()));
          },
          child: Hero(
            tag: 'image',
            child: Image.network(
              'https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fs.pstatic.net%2Fstatic%2Fwww%2Fmobile%2Fedit%2F2021%2F0210%2Fupload_1612937093891TGImE.jpg%22&type=nf340_228',
              width: 100,
              height: 100,
            ),
          ),
        ),
      ),
    );
  }
}
