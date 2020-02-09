import 'package:flutter/material.dart';

// const Color _defaultColor = Color(0xfff8f8f8);
const Color _defaultColor = Color(0xffffffff);

class Layout extends StatelessWidget {
  String title;
  Widget child;
  Color color;

  Layout({title, child}) {
    this.title = title;
    this.child = child is Widget ? child : null;
    this.color = color;
  }

  // 返回每个隐藏的菜单项
  SelectView(IconData icon, String text, String id) {
    return new PopupMenuItem<String>(
        value: id,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Icon(icon, color: Colors.blue),
            new Text(text),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text(this.title),
          // leading: new Icon(Icons.home),
          backgroundColor: Colors.blue,
          centerTitle: true,
          actions: <Widget>[
            // // 非隐藏的菜单
            // new IconButton(
            //     icon: new Icon(Icons.add_alarm),
            //     tooltip: 'Add Alarm',
            //     onPressed: () {}),
            // // 隐藏的菜单
            // new PopupMenuButton<String>(
            //   itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
            //     this.SelectView(Icons.message, '发起群聊', 'A'),
            //     this.SelectView(Icons.group_add, '添加服务', 'B'),
            //     this.SelectView(Icons.cast_connected, '扫一扫码', 'C'),
            //   ],
            //   onSelected: (String action) {
            //     // 点击选项的时候
            //     switch (action) {
            //       case 'A':
            //         break;
            //       case 'B':
            //         break;
            //       case 'C':
            //         break;
            //     }
            //   },
            // ),
          ],
        ),
        backgroundColor: color,
        body: child);
  }
}
