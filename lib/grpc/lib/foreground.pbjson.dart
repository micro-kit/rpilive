///
//  Generated code. Do not modify.
//  source: foreground.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const LiveInfo$json = const {
  '1': 'LiveInfo',
  '2': const [
    const {'1': 'rtmp', '3': 1, '4': 1, '5': 9, '10': 'rtmp'},
    const {'1': 'flv', '3': 2, '4': 1, '5': 9, '10': 'flv'},
    const {'1': 'hls', '3': 3, '4': 1, '5': 9, '10': 'hls'},
    const {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'snapshot', '3': 5, '4': 1, '5': 9, '10': 'snapshot'},
    const {'1': 'appname', '3': 6, '4': 1, '5': 9, '10': 'appname'},
    const {'1': 'live_id', '3': 7, '4': 1, '5': 9, '10': 'liveId'},
  ],
};

const GetLiveUrlRequest$json = const {
  '1': 'GetLiveUrlRequest',
  '2': const [
    const {'1': 'appname', '3': 1, '4': 1, '5': 9, '10': 'appname'},
    const {'1': 'live_id', '3': 2, '4': 1, '5': 9, '10': 'liveId'},
  ],
};

const GetLiveUrlReply$json = const {
  '1': 'GetLiveUrlReply',
  '2': const [
    const {'1': 'live', '3': 1, '4': 1, '5': 11, '6': '.piliveserverpb.LiveInfo', '10': 'live'},
  ],
};

const QueryLivesByAppRequest$json = const {
  '1': 'QueryLivesByAppRequest',
  '2': const [
    const {'1': 'appname', '3': 1, '4': 1, '5': 9, '10': 'appname'},
  ],
};

const QueryLivesByAppReply$json = const {
  '1': 'QueryLivesByAppReply',
  '2': const [
    const {'1': 'lives', '3': 1, '4': 3, '5': 11, '6': '.piliveserverpb.LiveInfo', '10': 'lives'},
  ],
};

const HeartbeatLiveRequest$json = const {
  '1': 'HeartbeatLiveRequest',
  '2': const [
    const {'1': 'appname', '3': 1, '4': 1, '5': 9, '10': 'appname'},
    const {'1': 'live_id', '3': 2, '4': 1, '5': 9, '10': 'liveId'},
    const {'1': 'time', '3': 3, '4': 1, '5': 9, '10': 'time'},
    const {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'signature', '3': 5, '4': 1, '5': 9, '10': 'signature'},
  ],
};

const HeartbeatLiveReply$json = const {
  '1': 'HeartbeatLiveReply',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'push', '3': 2, '4': 1, '5': 9, '10': 'push'},
  ],
};

const UploadSnapshotRequest$json = const {
  '1': 'UploadSnapshotRequest',
  '2': const [
    const {'1': 'appname', '3': 1, '4': 1, '5': 9, '10': 'appname'},
    const {'1': 'live_id', '3': 2, '4': 1, '5': 9, '10': 'liveId'},
    const {'1': 'body', '3': 3, '4': 1, '5': 12, '10': 'body'},
  ],
};

const UploadSnapshotReply$json = const {
  '1': 'UploadSnapshotReply',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
  ],
};

const PlayLiveRequest$json = const {
  '1': 'PlayLiveRequest',
  '2': const [
    const {'1': 'appname', '3': 1, '4': 1, '5': 9, '10': 'appname'},
    const {'1': 'live_id', '3': 2, '4': 1, '5': 9, '10': 'liveId'},
    const {'1': 'push', '3': 3, '4': 1, '5': 9, '10': 'push'},
    const {'1': 'device_id', '3': 4, '4': 1, '5': 9, '10': 'deviceId'},
  ],
};

const PlayLiveReply$json = const {
  '1': 'PlayLiveReply',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
  ],
};

