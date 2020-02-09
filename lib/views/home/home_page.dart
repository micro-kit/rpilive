import 'package:flutter/material.dart';
import 'package:weui/weui.dart';
import 'package:rpilive/grpc/live.dart';
import 'package:rpilive/grpc/lib/foreground.pb.dart';
import 'package:rpilive/grpc/lib/foreground.pbgrpc.dart';
import 'package:rpilive/layout/layout.dart';
import 'package:rpilive/views/play/play_page.dart';
import 'package:toast/toast.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    lives.add(getWeForm());
    _getLives();
  }

  @override
  void dispose() {
    super.dispose();
  }

  // 默认地址
  String address = "192.168.5.171:28080";

  // 列表Widget
  List<Widget> lives = [];

  // 获取流列表
  _getLives() async {
    List<LiveInfo> list = [];
    await Lives.getInstance().getLives("live", (lives) => {list = lives});
    print("获取到了数据 $list");
    List<Widget> newLives = []; // 列表Widget
    list.forEach((liveInfo) {
      newLives.add(
        WeCell(
            label: Row(children: <Widget>[
              Padding(
                  child: Image.network(
                      liveInfo.snapshot +
                          '?t=' +
                          (new DateTime.now()
                              .millisecondsSinceEpoch
                              .toString()),
                      width: 100,
                      height: 80),
                  padding: EdgeInsets.only(right: 2)),
              Text(liveInfo.name)
            ]),
            content: Icon(Icons.keyboard_arrow_right),
            onClick: () {
              print('click' + liveInfo.name);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PlayPage(liveInfo: liveInfo)));
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (context) => VlcPlayPage(liveInfo: liveInfo)));
            }),
      );
    });

    // 输入服务端ip文本框
    newLives.add(getWeForm());

    setState(() {
      this.lives = newLives;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Layout(
      title: '首页',
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: WeCells(children: lives),
      ),
    );
  }

  // 获取ip输入框
  Widget getWeForm(){
    return WeForm(children: [
      WeInput(
          label: 'IP',
          hintText: '输入服务端IP',
          defaultValue: address,
          onChange: (String val) {
            address = val;
          },
          footer: WeButton('刷新',
              size: WeButtonSize.mini,
              theme: WeButtonType.primary, onClick: () {
            print("修改服务端连接地址");
            List<String> addrs = address.split(":");
            print("输入地址为 ${addrs}");
            if (addrs.length != 2) {
              Toast.show("输入地址错误", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
              return;
            }
            int post = int.parse(addrs[1]);
            if (post <= 0){
              Toast.show("输入端口错误", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
              return;
            }
            lives = [];
            lives.add(getWeForm());
            // 列表设置为空
            setState(() {
              this.lives = lives;
            });

            Lives.setInstance(addrs[0], post);
            _getLives();
          }))
    ]);
  }

}
