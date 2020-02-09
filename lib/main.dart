import 'package:flutter/material.dart';
import 'package:rpilive/router/index.dart';
import 'package:rpilive/views/welcome.dart';
import 'package:weui/weui.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  AppState createState() => AppState();
}

class AppState extends State {
  bool isDefaultTheme = true;

  void toggleTheme() {
    this.setState(() {
      isDefaultTheme = !isDefaultTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WeUi(
      theme: isDefaultTheme ? WeTheme() : WeTheme(
        primaryColor: Color(0xff1989fa),
        primaryColorDisabled: Color(0xff5cadff),
        warnColor: Color(0xfffb4343),
        warnColorDisabled: Color(0xfffaa7a3)
      ),
      config: WeConfig(
        toastSuccessDuration: 5000
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: routes,
        home: WelcomePage() //Index(this.toggleTheme)
      )
    );
  }
}
