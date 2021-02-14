import 'package:flutter/material.dart';

class HeroDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HeroDetail'),
      ),
      body: Hero(
        tag: 'image',
        child: Image.network(
          'https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fs.pstatic.net%2Fstatic%2Fwww%2Fmobile%2Fedit%2F2021%2F0210%2Fupload_1612937093891TGImE.jpg%22&type=nf340_228',
        ),
      ),
    );
  }
}
