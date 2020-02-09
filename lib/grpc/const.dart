/* rpc调用涉及的公共常量 */

/* grpc连接相关配置 */
class GrpcConfig {
  // grpc ip或域名
  static const grpcProAddress = '192.168.5.171';
  // grpc 端口
  static const grpcProPort = 28080;
  // 连接超时时间为5秒
  static const connectTimeOut = Duration(seconds: 5);
  // 响应超时时间为7秒
  static const receiveTimeOut = Duration(seconds: 10);
}
/* end grpc连接相关配置 */
