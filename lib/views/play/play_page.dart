import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rpilive/layout/layout.dart';
import 'package:fijkplayer/fijkplayer.dart';
import 'package:rpilive/grpc/lib/foreground.pb.dart';
import 'package:rpilive/grpc/lib/foreground.pbgrpc.dart';
import 'package:rpilive/grpc/live.dart';
import 'package:device_id/device_id.dart';
import 'package:weui/weui.dart';
import 'package:toast/toast.dart';

final Widget box = Container(height: 10, child: null);

class PlayPage extends StatefulWidget {
  final LiveInfo liveInfo;
  PlayPage({this.liveInfo});

  @override
  _PlayPageState createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  FijkPlayer player = FijkPlayer();
  String myPush = "play";
  bool isBack = false;

  _PlayPageState();

  @override
  void initState() {
    super.initState();
    _heartbeatPlay();
    startPlay();
  }

  @override
  void dispose() {
    super.dispose();
    myPush = "stop";
    isBack = true;
    player.release();
  }

  // 定时发送播放心跳
  _heartbeatPlay() async {
    print("发送心跳");
    String deviceid = await DeviceId.getID;
    Stream<PlayLiveRequest> heartbeatPush() async* {
      for (;;) {
        if (isBack == true) {
          print("已关闭页面");
          return;
        }
        if (myPush == "stop") {
          print("停止心跳播放状态");
        }
        print("发送心跳播放状态");
        final point = PlayLiveRequest()
          ..appname = widget.liveInfo.appname
          ..liveId = widget.liveInfo.liveId
          ..push = myPush
          ..deviceId = deviceid;
        print('心跳数据 ${point}');
        yield point;
        await Future.delayed(Duration(seconds: 5)); // 休息一秒
      }
    }

    await Lives.getInstance().playLive(heartbeatPush);
  }

  void startPlay() async {
    await player.reset();
    await player.setDataSource(widget.liveInfo.rtmp, autoPlay: true).catchError((e) {
      print("setDataSource error: $e");
      Toast.show("设置播放地址错误 $e", context, duration: Toast.LENGTH_SHORT, gravity:  Toast.BOTTOM);
    });
  }

  @override
  Widget build(BuildContext context) {
    print(widget.liveInfo);
    return Layout(
        title: '播放',
        child: new Row(
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(top: 0.0, bottom: 0.0),
                child: Column(children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width / 4 * 3,
                    child: FijkVolumeWatcher(
                        watcher: null,
                        showToast: true,
                        child: FijkView(
                          player: player,
                        )),
                  ),
                  box,
                  Container(
                    width: MediaQuery.of(context).size.width - 10,
                    child: WeButton('播放', theme: WeButtonType.primary,
                        onClick: () { // TODO 这里无法重新播放，因为播放器进入了error状态
                      print('点击播放');
                      myPush = "play";
                      startPlay();
                      player.start();
                    }),
                  ),
                  box,
                  Container(
                    width: MediaQuery.of(context).size.width - 10,
                    child:
                        WeButton('停止', theme: WeButtonType.warn, onClick: () {
                      print('点击停止');
                      myPush = "stop";
                      player.pause();
                    }),
                  )
                ]))
          ],
        ));
  }
}
