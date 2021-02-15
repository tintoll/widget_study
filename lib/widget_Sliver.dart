import 'package:flutter/material.dart';

class WidgetSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true, // 축소시 상단에 AppBar가 고정되는지 설정
            expandedHeight: 180.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Sliver'),
              background: Image.network(
                'https://s.pstatic.net/dthumb.phinf/?src=%22https%3A%2F%2Fs.pstatic.net%2Fstatic%2Fwww%2Fmobile%2Fedit%2F2021%2F0210%2Fupload_1612937093891TGImE.jpg%22&type=nf340_228',
                fit: BoxFit.cover,
              ),
            ),

          ),
          SliverFillRemaining(
            child: Center(
              child: Text('Text'),
            ),
          )
        ],
      ),
    );
  }
}
