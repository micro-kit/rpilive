///
//  Generated code. Do not modify.
//  source: foreground.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'foreground.pb.dart' as $0;
export 'foreground.pb.dart';

class PiLiveServerClient extends $grpc.Client {
  static final _$getLiveUrl =
      $grpc.ClientMethod<$0.GetLiveUrlRequest, $0.GetLiveUrlReply>(
          '/piliveserverpb.PiLiveServer/GetLiveUrl',
          ($0.GetLiveUrlRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetLiveUrlReply.fromBuffer(value));
  static final _$queryLivesByApp =
      $grpc.ClientMethod<$0.QueryLivesByAppRequest, $0.QueryLivesByAppReply>(
          '/piliveserverpb.PiLiveServer/QueryLivesByApp',
          ($0.QueryLivesByAppRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.QueryLivesByAppReply.fromBuffer(value));
  static final _$heartbeatLive =
      $grpc.ClientMethod<$0.HeartbeatLiveRequest, $0.HeartbeatLiveReply>(
          '/piliveserverpb.PiLiveServer/HeartbeatLive',
          ($0.HeartbeatLiveRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.HeartbeatLiveReply.fromBuffer(value));
  static final _$uploadSnapshot =
      $grpc.ClientMethod<$0.UploadSnapshotRequest, $0.UploadSnapshotReply>(
          '/piliveserverpb.PiLiveServer/UploadSnapshot',
          ($0.UploadSnapshotRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UploadSnapshotReply.fromBuffer(value));
  static final _$playLive =
      $grpc.ClientMethod<$0.PlayLiveRequest, $0.PlayLiveReply>(
          '/piliveserverpb.PiLiveServer/PlayLive',
          ($0.PlayLiveRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.PlayLiveReply.fromBuffer(value));

  PiLiveServerClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.GetLiveUrlReply> getLiveUrl(
      $0.GetLiveUrlRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getLiveUrl, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.QueryLivesByAppReply> queryLivesByApp(
      $0.QueryLivesByAppRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$queryLivesByApp, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$0.HeartbeatLiveReply> heartbeatLive(
      $async.Stream<$0.HeartbeatLiveRequest> request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$heartbeatLive, request, options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$0.UploadSnapshotReply> uploadSnapshot(
      $0.UploadSnapshotRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$uploadSnapshot, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.PlayLiveReply> playLive(
      $async.Stream<$0.PlayLiveRequest> request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$playLive, request, options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class PiLiveServerServiceBase extends $grpc.Service {
  $core.String get $name => 'piliveserverpb.PiLiveServer';

  PiLiveServerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetLiveUrlRequest, $0.GetLiveUrlReply>(
        'GetLiveUrl',
        getLiveUrl_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetLiveUrlRequest.fromBuffer(value),
        ($0.GetLiveUrlReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.QueryLivesByAppRequest, $0.QueryLivesByAppReply>(
            'QueryLivesByApp',
            queryLivesByApp_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.QueryLivesByAppRequest.fromBuffer(value),
            ($0.QueryLivesByAppReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.HeartbeatLiveRequest, $0.HeartbeatLiveReply>(
            'HeartbeatLive',
            heartbeatLive,
            true,
            true,
            ($core.List<$core.int> value) =>
                $0.HeartbeatLiveRequest.fromBuffer(value),
            ($0.HeartbeatLiveReply value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UploadSnapshotRequest, $0.UploadSnapshotReply>(
            'UploadSnapshot',
            uploadSnapshot_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UploadSnapshotRequest.fromBuffer(value),
            ($0.UploadSnapshotReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PlayLiveRequest, $0.PlayLiveReply>(
        'PlayLive',
        playLive,
        true,
        false,
        ($core.List<$core.int> value) => $0.PlayLiveRequest.fromBuffer(value),
        ($0.PlayLiveReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetLiveUrlReply> getLiveUrl_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetLiveUrlRequest> request) async {
    return getLiveUrl(call, await request);
  }

  $async.Future<$0.QueryLivesByAppReply> queryLivesByApp_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.QueryLivesByAppRequest> request) async {
    return queryLivesByApp(call, await request);
  }

  $async.Future<$0.UploadSnapshotReply> uploadSnapshot_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.UploadSnapshotRequest> request) async {
    return uploadSnapshot(call, await request);
  }

  $async.Future<$0.GetLiveUrlReply> getLiveUrl(
      $grpc.ServiceCall call, $0.GetLiveUrlRequest request);
  $async.Future<$0.QueryLivesByAppReply> queryLivesByApp(
      $grpc.ServiceCall call, $0.QueryLivesByAppRequest request);
  $async.Stream<$0.HeartbeatLiveReply> heartbeatLive(
      $grpc.ServiceCall call, $async.Stream<$0.HeartbeatLiveRequest> request);
  $async.Future<$0.UploadSnapshotReply> uploadSnapshot(
      $grpc.ServiceCall call, $0.UploadSnapshotRequest request);
  $async.Future<$0.PlayLiveReply> playLive(
      $grpc.ServiceCall call, $async.Stream<$0.PlayLiveRequest> request);
}
