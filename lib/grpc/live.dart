import 'dart:async';
import 'package:grpc/grpc.dart';
import 'package:rpilive/grpc/lib/foreground.pb.dart';
import 'package:rpilive/grpc/lib/foreground.pbgrpc.dart';
import 'package:rpilive/grpc/grpc.dart';

class Lives extends GrpcBase {
  // 公用Lives对象
  static Lives _instance;
  static String ip;
  static int port;

  /// grpc客户端连接
  PiLiveServerClient _client;
  ClientChannel channel;
  // 获取一个静态对象，并初始化连接
  static Lives getInstance() {
    if (_instance == null) {
      print("连接对象为null ${ip} - ${port}");
      _instance = Lives._internal(myIp: ip, myPort: port);
    }
    return _instance;
  }

  // 设置grpc连接对象
  static Lives setInstance(String myIp, int myPort) {
    ip = myIp;
    port = myPort;
    // 将上次连接信息置空
    if (_instance != null) {
      _instance.channel.shutdown();
      _instance.channel = null;
      _instance._client = null;
      _instance = null;
    }
    // 重新建立连接
    _instance = Lives._internal(myIp: myIp, myPort: myPort);
  }

  // 做一些初始化grpc连接的事
  Lives._internal({String myIp, int myPort}) {
    if (_client == null) {
      try {
        channel = super.getChannel(ip: myIp, port: myPort);
        _client = PiLiveServerClient(channel);
      } catch (e) {
        print("建立连接错误");
      }
    }
  }

  // getLives 获取推流列表
  void getLives(String appname, CallBack callBack) async {
    try {
      final response = await _client
          .queryLivesByApp(QueryLivesByAppRequest()..appname = 'live');
      print('获取流列表: ${response.lives}');
      callBack(response.lives);
    } catch (e) {
      print('获取流列表错误: $e');
      callBack([]);
    }
  }

  // playLive 发送播放状态 TODO 未知是否可用
  void playLive(PlayLiveStream pushStatusF) async {
    try {
      final summary = await _client.playLive(pushStatusF());
      print('发送播放状态结束时响应: ${summary.status}');
    } catch (e) {
      print('发送播放状态错误: $e');
    }
  }
}
