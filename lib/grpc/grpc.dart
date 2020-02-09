import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:rpilive/grpc/const.dart';
import 'package:rpilive/grpc/lib/foreground.pb.dart';

// rpc调用回调函数
typedef CallBack(t);
// 播放状态生成器
typedef Stream<PlayLiveRequest> PlayLiveStream();

// grpc基类
class GrpcBase {
  // 获取grpc channel
  ClientChannel getChannel({String ip, int port}) {
    if (ip == "" || ip == null) {
      ip = GrpcConfig.grpcProAddress;
    }
    if (port == 0 || port == null) {
      port = GrpcConfig.grpcProPort;
    }
    print("GRPC ${ip} - ${port}");
    final channel = ClientChannel(ip,
        port: port,
        options: const ChannelOptions(
          credentials: ChannelCredentials.insecure(),
          connectionTimeout: GrpcConfig.connectTimeOut,
        ));
    return channel;
  }
}
