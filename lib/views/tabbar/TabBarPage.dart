import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:rpilive/views/home/home_page.dart';

class TabBarPage extends StatefulWidget {
  TabBarPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  final tabbarTitles = ['首页', '我'];
  final tabbarTitleColorSelected = TextStyle(color: const Color(0xff63ca6c));
  final tabbarTitleColorNormal = TextStyle(color: const Color(0xff969696));
  // final themeColor = Colors.blue;

  int _currentIndex = 0;
  List<Widget> controllers = List();
  String bigImg = 'images/ic_main_tab_contacts_pre.png';

  @override
  void initState() {
    controllers
      ..add(HomePage(
        title: tabbarTitles[0],
      ))
      ..add(HomePage(
        title: tabbarTitles[1],
      ));

    super.initState();
  }

  // 图标颜色
  Color getIconColor(int index) {
    if (index == _currentIndex) {
      return Colors.green[400];
    }
    return Colors.grey;
  }

  // 图标大小
  double getIconSize(int index) {
    if (index == _currentIndex) {
      return 30.0;
    }
    return 28.0;
  }

  // 文字样式
  TextStyle getTabTextStyle(int index) {
    return TextStyle(color: getIconColor(index), fontWeight: FontWeight.w600, fontSize: 12.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controllers[_currentIndex],
      bottomNavigationBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            title: Text(tabbarTitles[0], style: getTabTextStyle(0)),
            icon: Icon(
              Icons.camera,
              color: getIconColor(0),
              size: getIconSize(0),
            ),
          ),
          BottomNavigationBarItem(
            title: Text(tabbarTitles[1], style: getTabTextStyle(1)),
            icon: Icon(
              Icons.camera_alt,
              color: getIconColor(1),
              size: getIconSize(1),
            ),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
