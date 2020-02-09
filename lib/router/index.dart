import 'package:flutter/material.dart';
import 'package:rpilive/views/home/home_page.dart';
import 'package:rpilive/views/tabbar/TabBarPage.dart';

final routes = <String, WidgetBuilder>{
  // tab页
  '/tabbar':(_) => TabBarPage(),
  // 首页
  '/home': (_) => HomePage(),

};
