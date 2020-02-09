import 'package:flutter/material.dart';

class PublicAppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final double height;

  const PublicAppBarWidget({Key key, this.title: '😊', this.height: 46.0})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new PublicAppBarState();
  }

  @override
  Size get preferredSize => Size.fromHeight(height); //这里设置控件（appBar）的高度

}

class PublicAppBarState extends State<PublicAppBarWidget> {

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
    return new AppBar(
      title: new Text("首页"),
      // leading: new Icon(Icons.home),
      backgroundColor: Colors.blue,
      centerTitle: false,
      actions: <Widget>[
        // 非隐藏的菜单
        new IconButton(
            icon: new Icon(Icons.add_alarm),
            tooltip: 'Add Alarm',
            onPressed: () {}),
        // 隐藏的菜单
        new PopupMenuButton<String>(
          itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
            this.SelectView(Icons.message, '发起群聊', 'A'),
            this.SelectView(Icons.group_add, '添加服务', 'B'),
            this.SelectView(Icons.cast_connected, '扫一扫码', 'C'),
          ],
          onSelected: (String action) {
            // 点击选项的时候
            switch (action) {
              case 'A':
                break;
              case 'B':
                break;
              case 'C':
                break;
            }
          },
        ),
      ],
    );
  }
}
