///
//  Generated code. Do not modify.
//  source: foreground.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class LiveInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LiveInfo', package: const $pb.PackageName('piliveserverpb'), createEmptyInstance: create)
    ..aOS(1, 'rtmp')
    ..aOS(2, 'flv')
    ..aOS(3, 'hls')
    ..aOS(4, 'name')
    ..aOS(5, 'snapshot')
    ..aOS(6, 'appname')
    ..aOS(7, 'liveId')
    ..hasRequiredFields = false
  ;

  LiveInfo._() : super();
  factory LiveInfo() => create();
  factory LiveInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LiveInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LiveInfo clone() => LiveInfo()..mergeFromMessage(this);
  LiveInfo copyWith(void Function(LiveInfo) updates) => super.copyWith((message) => updates(message as LiveInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LiveInfo create() => LiveInfo._();
  LiveInfo createEmptyInstance() => create();
  static $pb.PbList<LiveInfo> createRepeated() => $pb.PbList<LiveInfo>();
  @$core.pragma('dart2js:noInline')
  static LiveInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LiveInfo>(create);
  static LiveInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get rtmp => $_getSZ(0);
  @$pb.TagNumber(1)
  set rtmp($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRtmp() => $_has(0);
  @$pb.TagNumber(1)
  void clearRtmp() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get flv => $_getSZ(1);
  @$pb.TagNumber(2)
  set flv($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFlv() => $_has(1);
  @$pb.TagNumber(2)
  void clearFlv() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get hls => $_getSZ(2);
  @$pb.TagNumber(3)
  set hls($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHls() => $_has(2);
  @$pb.TagNumber(3)
  void clearHls() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get snapshot => $_getSZ(4);
  @$pb.TagNumber(5)
  set snapshot($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSnapshot() => $_has(4);
  @$pb.TagNumber(5)
  void clearSnapshot() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get appname => $_getSZ(5);
  @$pb.TagNumber(6)
  set appname($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAppname() => $_has(5);
  @$pb.TagNumber(6)
  void clearAppname() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get liveId => $_getSZ(6);
  @$pb.TagNumber(7)
  set liveId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLiveId() => $_has(6);
  @$pb.TagNumber(7)
  void clearLiveId() => clearField(7);
}

class GetLiveUrlRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetLiveUrlRequest', package: const $pb.PackageName('piliveserverpb'), createEmptyInstance: create)
    ..aOS(1, 'appname')
    ..aOS(2, 'liveId')
    ..hasRequiredFields = false
  ;

  GetLiveUrlRequest._() : super();
  factory GetLiveUrlRequest() => create();
  factory GetLiveUrlRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLiveUrlRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetLiveUrlRequest clone() => GetLiveUrlRequest()..mergeFromMessage(this);
  GetLiveUrlRequest copyWith(void Function(GetLiveUrlRequest) updates) => super.copyWith((message) => updates(message as GetLiveUrlRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLiveUrlRequest create() => GetLiveUrlRequest._();
  GetLiveUrlRequest createEmptyInstance() => create();
  static $pb.PbList<GetLiveUrlRequest> createRepeated() => $pb.PbList<GetLiveUrlRequest>();
  @$core.pragma('dart2js:noInline')
  static GetLiveUrlRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLiveUrlRequest>(create);
  static GetLiveUrlRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appname => $_getSZ(0);
  @$pb.TagNumber(1)
  set appname($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppname() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppname() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get liveId => $_getSZ(1);
  @$pb.TagNumber(2)
  set liveId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLiveId() => $_has(1);
  @$pb.TagNumber(2)
  void clearLiveId() => clearField(2);
}

class GetLiveUrlReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetLiveUrlReply', package: const $pb.PackageName('piliveserverpb'), createEmptyInstance: create)
    ..aOM<LiveInfo>(1, 'live', subBuilder: LiveInfo.create)
    ..hasRequiredFields = false
  ;

  GetLiveUrlReply._() : super();
  factory GetLiveUrlReply() => create();
  factory GetLiveUrlReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLiveUrlReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  GetLiveUrlReply clone() => GetLiveUrlReply()..mergeFromMessage(this);
  GetLiveUrlReply copyWith(void Function(GetLiveUrlReply) updates) => super.copyWith((message) => updates(message as GetLiveUrlReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLiveUrlReply create() => GetLiveUrlReply._();
  GetLiveUrlReply createEmptyInstance() => create();
  static $pb.PbList<GetLiveUrlReply> createRepeated() => $pb.PbList<GetLiveUrlReply>();
  @$core.pragma('dart2js:noInline')
  static GetLiveUrlReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLiveUrlReply>(create);
  static GetLiveUrlReply _defaultInstance;

  @$pb.TagNumber(1)
  LiveInfo get live => $_getN(0);
  @$pb.TagNumber(1)
  set live(LiveInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLive() => $_has(0);
  @$pb.TagNumber(1)
  void clearLive() => clearField(1);
  @$pb.TagNumber(1)
  LiveInfo ensureLive() => $_ensure(0);
}

class QueryLivesByAppRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('QueryLivesByAppRequest', package: const $pb.PackageName('piliveserverpb'), createEmptyInstance: create)
    ..aOS(1, 'appname')
    ..hasRequiredFields = false
  ;

  QueryLivesByAppRequest._() : super();
  factory QueryLivesByAppRequest() => create();
  factory QueryLivesByAppRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryLivesByAppRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  QueryLivesByAppRequest clone() => QueryLivesByAppRequest()..mergeFromMessage(this);
  QueryLivesByAppRequest copyWith(void Function(QueryLivesByAppRequest) updates) => super.copyWith((message) => updates(message as QueryLivesByAppRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryLivesByAppRequest create() => QueryLivesByAppRequest._();
  QueryLivesByAppRequest createEmptyInstance() => create();
  static $pb.PbList<QueryLivesByAppRequest> createRepeated() => $pb.PbList<QueryLivesByAppRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryLivesByAppRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryLivesByAppRequest>(create);
  static QueryLivesByAppRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appname => $_getSZ(0);
  @$pb.TagNumber(1)
  set appname($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppname() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppname() => clearField(1);
}

class QueryLivesByAppReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('QueryLivesByAppReply', package: const $pb.PackageName('piliveserverpb'), createEmptyInstance: create)
    ..pc<LiveInfo>(1, 'lives', $pb.PbFieldType.PM, subBuilder: LiveInfo.create)
    ..hasRequiredFields = false
  ;

  QueryLivesByAppReply._() : super();
  factory QueryLivesByAppReply() => create();
  factory QueryLivesByAppReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryLivesByAppReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  QueryLivesByAppReply clone() => QueryLivesByAppReply()..mergeFromMessage(this);
  QueryLivesByAppReply copyWith(void Function(QueryLivesByAppReply) updates) => super.copyWith((message) => updates(message as QueryLivesByAppReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryLivesByAppReply create() => QueryLivesByAppReply._();
  QueryLivesByAppReply createEmptyInstance() => create();
  static $pb.PbList<QueryLivesByAppReply> createRepeated() => $pb.PbList<QueryLivesByAppReply>();
  @$core.pragma('dart2js:noInline')
  static QueryLivesByAppReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryLivesByAppReply>(create);
  static QueryLivesByAppReply _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<LiveInfo> get lives => $_getList(0);
}

class HeartbeatLiveRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HeartbeatLiveRequest', package: const $pb.PackageName('piliveserverpb'), createEmptyInstance: create)
    ..aOS(1, 'appname')
    ..aOS(2, 'liveId')
    ..aOS(3, 'time')
    ..aOS(4, 'name')
    ..aOS(5, 'signature')
    ..hasRequiredFields = false
  ;

  HeartbeatLiveRequest._() : super();
  factory HeartbeatLiveRequest() => create();
  factory HeartbeatLiveRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HeartbeatLiveRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HeartbeatLiveRequest clone() => HeartbeatLiveRequest()..mergeFromMessage(this);
  HeartbeatLiveRequest copyWith(void Function(HeartbeatLiveRequest) updates) => super.copyWith((message) => updates(message as HeartbeatLiveRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HeartbeatLiveRequest create() => HeartbeatLiveRequest._();
  HeartbeatLiveRequest createEmptyInstance() => create();
  static $pb.PbList<HeartbeatLiveRequest> createRepeated() => $pb.PbList<HeartbeatLiveRequest>();
  @$core.pragma('dart2js:noInline')
  static HeartbeatLiveRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HeartbeatLiveRequest>(create);
  static HeartbeatLiveRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appname => $_getSZ(0);
  @$pb.TagNumber(1)
  set appname($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppname() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppname() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get liveId => $_getSZ(1);
  @$pb.TagNumber(2)
  set liveId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLiveId() => $_has(1);
  @$pb.TagNumber(2)
  void clearLiveId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get time => $_getSZ(2);
  @$pb.TagNumber(3)
  set time($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearTime() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get signature => $_getSZ(4);
  @$pb.TagNumber(5)
  set signature($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSignature() => $_has(4);
  @$pb.TagNumber(5)
  void clearSignature() => clearField(5);
}

class HeartbeatLiveReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HeartbeatLiveReply', package: const $pb.PackageName('piliveserverpb'), createEmptyInstance: create)
    ..aOS(1, 'status')
    ..aOS(2, 'push')
    ..hasRequiredFields = false
  ;

  HeartbeatLiveReply._() : super();
  factory HeartbeatLiveReply() => create();
  factory HeartbeatLiveReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HeartbeatLiveReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  HeartbeatLiveReply clone() => HeartbeatLiveReply()..mergeFromMessage(this);
  HeartbeatLiveReply copyWith(void Function(HeartbeatLiveReply) updates) => super.copyWith((message) => updates(message as HeartbeatLiveReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HeartbeatLiveReply create() => HeartbeatLiveReply._();
  HeartbeatLiveReply createEmptyInstance() => create();
  static $pb.PbList<HeartbeatLiveReply> createRepeated() => $pb.PbList<HeartbeatLiveReply>();
  @$core.pragma('dart2js:noInline')
  static HeartbeatLiveReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HeartbeatLiveReply>(create);
  static HeartbeatLiveReply _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get push => $_getSZ(1);
  @$pb.TagNumber(2)
  set push($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPush() => $_has(1);
  @$pb.TagNumber(2)
  void clearPush() => clearField(2);
}

class UploadSnapshotRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UploadSnapshotRequest', package: const $pb.PackageName('piliveserverpb'), createEmptyInstance: create)
    ..aOS(1, 'appname')
    ..aOS(2, 'liveId')
    ..a<$core.List<$core.int>>(3, 'body', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  UploadSnapshotRequest._() : super();
  factory UploadSnapshotRequest() => create();
  factory UploadSnapshotRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadSnapshotRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UploadSnapshotRequest clone() => UploadSnapshotRequest()..mergeFromMessage(this);
  UploadSnapshotRequest copyWith(void Function(UploadSnapshotRequest) updates) => super.copyWith((message) => updates(message as UploadSnapshotRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadSnapshotRequest create() => UploadSnapshotRequest._();
  UploadSnapshotRequest createEmptyInstance() => create();
  static $pb.PbList<UploadSnapshotRequest> createRepeated() => $pb.PbList<UploadSnapshotRequest>();
  @$core.pragma('dart2js:noInline')
  static UploadSnapshotRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadSnapshotRequest>(create);
  static UploadSnapshotRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appname => $_getSZ(0);
  @$pb.TagNumber(1)
  set appname($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppname() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppname() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get liveId => $_getSZ(1);
  @$pb.TagNumber(2)
  set liveId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLiveId() => $_has(1);
  @$pb.TagNumber(2)
  void clearLiveId() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get body => $_getN(2);
  @$pb.TagNumber(3)
  set body($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBody() => $_has(2);
  @$pb.TagNumber(3)
  void clearBody() => clearField(3);
}

class UploadSnapshotReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UploadSnapshotReply', package: const $pb.PackageName('piliveserverpb'), createEmptyInstance: create)
    ..aOS(1, 'status')
    ..hasRequiredFields = false
  ;

  UploadSnapshotReply._() : super();
  factory UploadSnapshotReply() => create();
  factory UploadSnapshotReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadSnapshotReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  UploadSnapshotReply clone() => UploadSnapshotReply()..mergeFromMessage(this);
  UploadSnapshotReply copyWith(void Function(UploadSnapshotReply) updates) => super.copyWith((message) => updates(message as UploadSnapshotReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadSnapshotReply create() => UploadSnapshotReply._();
  UploadSnapshotReply createEmptyInstance() => create();
  static $pb.PbList<UploadSnapshotReply> createRepeated() => $pb.PbList<UploadSnapshotReply>();
  @$core.pragma('dart2js:noInline')
  static UploadSnapshotReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadSnapshotReply>(create);
  static UploadSnapshotReply _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class PlayLiveRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PlayLiveRequest', package: const $pb.PackageName('piliveserverpb'), createEmptyInstance: create)
    ..aOS(1, 'appname')
    ..aOS(2, 'liveId')
    ..aOS(3, 'push')
    ..aOS(4, 'deviceId')
    ..hasRequiredFields = false
  ;

  PlayLiveRequest._() : super();
  factory PlayLiveRequest() => create();
  factory PlayLiveRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlayLiveRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PlayLiveRequest clone() => PlayLiveRequest()..mergeFromMessage(this);
  PlayLiveRequest copyWith(void Function(PlayLiveRequest) updates) => super.copyWith((message) => updates(message as PlayLiveRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PlayLiveRequest create() => PlayLiveRequest._();
  PlayLiveRequest createEmptyInstance() => create();
  static $pb.PbList<PlayLiveRequest> createRepeated() => $pb.PbList<PlayLiveRequest>();
  @$core.pragma('dart2js:noInline')
  static PlayLiveRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlayLiveRequest>(create);
  static PlayLiveRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get appname => $_getSZ(0);
  @$pb.TagNumber(1)
  set appname($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAppname() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppname() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get liveId => $_getSZ(1);
  @$pb.TagNumber(2)
  set liveId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLiveId() => $_has(1);
  @$pb.TagNumber(2)
  void clearLiveId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get push => $_getSZ(2);
  @$pb.TagNumber(3)
  set push($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPush() => $_has(2);
  @$pb.TagNumber(3)
  void clearPush() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get deviceId => $_getSZ(3);
  @$pb.TagNumber(4)
  set deviceId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDeviceId() => $_has(3);
  @$pb.TagNumber(4)
  void clearDeviceId() => clearField(4);
}

class PlayLiveReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PlayLiveReply', package: const $pb.PackageName('piliveserverpb'), createEmptyInstance: create)
    ..aOS(1, 'status')
    ..hasRequiredFields = false
  ;

  PlayLiveReply._() : super();
  factory PlayLiveReply() => create();
  factory PlayLiveReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlayLiveReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  PlayLiveReply clone() => PlayLiveReply()..mergeFromMessage(this);
  PlayLiveReply copyWith(void Function(PlayLiveReply) updates) => super.copyWith((message) => updates(message as PlayLiveReply));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PlayLiveReply create() => PlayLiveReply._();
  PlayLiveReply createEmptyInstance() => create();
  static $pb.PbList<PlayLiveReply> createRepeated() => $pb.PbList<PlayLiveReply>();
  @$core.pragma('dart2js:noInline')
  static PlayLiveReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlayLiveReply>(create);
  static PlayLiveReply _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

