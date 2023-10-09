//
//  Generated code. Do not modify.
//  source: eigr/functions/protocol/actors/actor.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use kindDescriptor instead')
const Kind$json = {
  '1': 'Kind',
  '2': [
    {'1': 'UNKNOW_KIND', '2': 0},
    {'1': 'NAMED', '2': 1},
    {'1': 'UNAMED', '2': 2},
    {'1': 'POOLED', '2': 3},
    {'1': 'PROXY', '2': 4},
  ],
};

/// Descriptor for `Kind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List kindDescriptor = $convert.base64Decode(
    'CgRLaW5kEg8KC1VOS05PV19LSU5EEAASCQoFTkFNRUQQARIKCgZVTkFNRUQQAhIKCgZQT09MRU'
    'QQAxIJCgVQUk9YWRAE');

@$core.Deprecated('Use registryDescriptor instead')
const Registry$json = {
  '1': 'Registry',
  '2': [
    {'1': 'actors', '3': 1, '4': 3, '5': 11, '6': '.eigr.functions.protocol.actors.Registry.ActorsEntry', '10': 'actors'},
  ],
  '3': [Registry_ActorsEntry$json],
};

@$core.Deprecated('Use registryDescriptor instead')
const Registry_ActorsEntry$json = {
  '1': 'ActorsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.eigr.functions.protocol.actors.Actor', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `Registry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registryDescriptor = $convert.base64Decode(
    'CghSZWdpc3RyeRJMCgZhY3RvcnMYASADKAsyNC5laWdyLmZ1bmN0aW9ucy5wcm90b2NvbC5hY3'
    'RvcnMuUmVnaXN0cnkuQWN0b3JzRW50cnlSBmFjdG9ycxpgCgtBY3RvcnNFbnRyeRIQCgNrZXkY'
    'ASABKAlSA2tleRI7CgV2YWx1ZRgCIAEoCzIlLmVpZ3IuZnVuY3Rpb25zLnByb3RvY29sLmFjdG'
    '9ycy5BY3RvclIFdmFsdWU6AjgB');

@$core.Deprecated('Use actorSystemDescriptor instead')
const ActorSystem$json = {
  '1': 'ActorSystem',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'registry', '3': 2, '4': 1, '5': 11, '6': '.eigr.functions.protocol.actors.Registry', '10': 'registry'},
  ],
};

/// Descriptor for `ActorSystem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List actorSystemDescriptor = $convert.base64Decode(
    'CgtBY3RvclN5c3RlbRISCgRuYW1lGAEgASgJUgRuYW1lEkQKCHJlZ2lzdHJ5GAIgASgLMiguZW'
    'lnci5mdW5jdGlvbnMucHJvdG9jb2wuYWN0b3JzLlJlZ2lzdHJ5UghyZWdpc3RyeQ==');

@$core.Deprecated('Use actorSnapshotStrategyDescriptor instead')
const ActorSnapshotStrategy$json = {
  '1': 'ActorSnapshotStrategy',
  '2': [
    {'1': 'timeout', '3': 1, '4': 1, '5': 11, '6': '.eigr.functions.protocol.actors.TimeoutStrategy', '9': 0, '10': 'timeout'},
  ],
  '8': [
    {'1': 'strategy'},
  ],
};

/// Descriptor for `ActorSnapshotStrategy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List actorSnapshotStrategyDescriptor = $convert.base64Decode(
    'ChVBY3RvclNuYXBzaG90U3RyYXRlZ3kSSwoHdGltZW91dBgBIAEoCzIvLmVpZ3IuZnVuY3Rpb2'
    '5zLnByb3RvY29sLmFjdG9ycy5UaW1lb3V0U3RyYXRlZ3lIAFIHdGltZW91dEIKCghzdHJhdGVn'
    'eQ==');

@$core.Deprecated('Use actorDeactivationStrategyDescriptor instead')
const ActorDeactivationStrategy$json = {
  '1': 'ActorDeactivationStrategy',
  '2': [
    {'1': 'timeout', '3': 1, '4': 1, '5': 11, '6': '.eigr.functions.protocol.actors.TimeoutStrategy', '9': 0, '10': 'timeout'},
  ],
  '8': [
    {'1': 'strategy'},
  ],
};

/// Descriptor for `ActorDeactivationStrategy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List actorDeactivationStrategyDescriptor = $convert.base64Decode(
    'ChlBY3RvckRlYWN0aXZhdGlvblN0cmF0ZWd5EksKB3RpbWVvdXQYASABKAsyLy5laWdyLmZ1bm'
    'N0aW9ucy5wcm90b2NvbC5hY3RvcnMuVGltZW91dFN0cmF0ZWd5SABSB3RpbWVvdXRCCgoIc3Ry'
    'YXRlZ3k=');

@$core.Deprecated('Use timeoutStrategyDescriptor instead')
const TimeoutStrategy$json = {
  '1': 'TimeoutStrategy',
  '2': [
    {'1': 'timeout', '3': 1, '4': 1, '5': 3, '10': 'timeout'},
  ],
};

/// Descriptor for `TimeoutStrategy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timeoutStrategyDescriptor = $convert.base64Decode(
    'Cg9UaW1lb3V0U3RyYXRlZ3kSGAoHdGltZW91dBgBIAEoA1IHdGltZW91dA==');

@$core.Deprecated('Use actionDescriptor instead')
const Action$json = {
  '1': 'Action',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `Action`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List actionDescriptor = $convert.base64Decode(
    'CgZBY3Rpb24SEgoEbmFtZRgBIAEoCVIEbmFtZQ==');

@$core.Deprecated('Use fixedTimerActionDescriptor instead')
const FixedTimerAction$json = {
  '1': 'FixedTimerAction',
  '2': [
    {'1': 'seconds', '3': 1, '4': 1, '5': 5, '10': 'seconds'},
    {'1': 'action', '3': 2, '4': 1, '5': 11, '6': '.eigr.functions.protocol.actors.Action', '10': 'action'},
  ],
};

/// Descriptor for `FixedTimerAction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fixedTimerActionDescriptor = $convert.base64Decode(
    'ChBGaXhlZFRpbWVyQWN0aW9uEhgKB3NlY29uZHMYASABKAVSB3NlY29uZHMSPgoGYWN0aW9uGA'
    'IgASgLMiYuZWlnci5mdW5jdGlvbnMucHJvdG9jb2wuYWN0b3JzLkFjdGlvblIGYWN0aW9u');

@$core.Deprecated('Use actorStateDescriptor instead')
const ActorState$json = {
  '1': 'ActorState',
  '2': [
    {'1': 'tags', '3': 1, '4': 3, '5': 11, '6': '.eigr.functions.protocol.actors.ActorState.TagsEntry', '10': 'tags'},
    {'1': 'state', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'state'},
  ],
  '3': [ActorState_TagsEntry$json],
};

@$core.Deprecated('Use actorStateDescriptor instead')
const ActorState_TagsEntry$json = {
  '1': 'TagsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ActorState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List actorStateDescriptor = $convert.base64Decode(
    'CgpBY3RvclN0YXRlEkgKBHRhZ3MYASADKAsyNC5laWdyLmZ1bmN0aW9ucy5wcm90b2NvbC5hY3'
    'RvcnMuQWN0b3JTdGF0ZS5UYWdzRW50cnlSBHRhZ3MSKgoFc3RhdGUYAiABKAsyFC5nb29nbGUu'
    'cHJvdG9idWYuQW55UgVzdGF0ZRo3CglUYWdzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdm'
    'FsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use metadataDescriptor instead')
const Metadata$json = {
  '1': 'Metadata',
  '2': [
    {'1': 'channel_group', '3': 1, '4': 1, '5': 9, '10': 'channelGroup'},
    {'1': 'tags', '3': 2, '4': 3, '5': 11, '6': '.eigr.functions.protocol.actors.Metadata.TagsEntry', '10': 'tags'},
  ],
  '3': [Metadata_TagsEntry$json],
};

@$core.Deprecated('Use metadataDescriptor instead')
const Metadata_TagsEntry$json = {
  '1': 'TagsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `Metadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metadataDescriptor = $convert.base64Decode(
    'CghNZXRhZGF0YRIjCg1jaGFubmVsX2dyb3VwGAEgASgJUgxjaGFubmVsR3JvdXASRgoEdGFncx'
    'gCIAMoCzIyLmVpZ3IuZnVuY3Rpb25zLnByb3RvY29sLmFjdG9ycy5NZXRhZGF0YS5UYWdzRW50'
    'cnlSBHRhZ3MaNwoJVGFnc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUg'
    'V2YWx1ZToCOAE=');

@$core.Deprecated('Use actorSettingsDescriptor instead')
const ActorSettings$json = {
  '1': 'ActorSettings',
  '2': [
    {'1': 'kind', '3': 1, '4': 1, '5': 14, '6': '.eigr.functions.protocol.actors.Kind', '10': 'kind'},
    {'1': 'stateful', '3': 2, '4': 1, '5': 8, '10': 'stateful'},
    {'1': 'snapshot_strategy', '3': 3, '4': 1, '5': 11, '6': '.eigr.functions.protocol.actors.ActorSnapshotStrategy', '10': 'snapshotStrategy'},
    {'1': 'deactivation_strategy', '3': 4, '4': 1, '5': 11, '6': '.eigr.functions.protocol.actors.ActorDeactivationStrategy', '10': 'deactivationStrategy'},
    {'1': 'min_pool_size', '3': 5, '4': 1, '5': 5, '10': 'minPoolSize'},
    {'1': 'max_pool_size', '3': 6, '4': 1, '5': 5, '10': 'maxPoolSize'},
  ],
};

/// Descriptor for `ActorSettings`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List actorSettingsDescriptor = $convert.base64Decode(
    'Cg1BY3RvclNldHRpbmdzEjgKBGtpbmQYASABKA4yJC5laWdyLmZ1bmN0aW9ucy5wcm90b2NvbC'
    '5hY3RvcnMuS2luZFIEa2luZBIaCghzdGF0ZWZ1bBgCIAEoCFIIc3RhdGVmdWwSYgoRc25hcHNo'
    'b3Rfc3RyYXRlZ3kYAyABKAsyNS5laWdyLmZ1bmN0aW9ucy5wcm90b2NvbC5hY3RvcnMuQWN0b3'
    'JTbmFwc2hvdFN0cmF0ZWd5UhBzbmFwc2hvdFN0cmF0ZWd5Em4KFWRlYWN0aXZhdGlvbl9zdHJh'
    'dGVneRgEIAEoCzI5LmVpZ3IuZnVuY3Rpb25zLnByb3RvY29sLmFjdG9ycy5BY3RvckRlYWN0aX'
    'ZhdGlvblN0cmF0ZWd5UhRkZWFjdGl2YXRpb25TdHJhdGVneRIiCg1taW5fcG9vbF9zaXplGAUg'
    'ASgFUgttaW5Qb29sU2l6ZRIiCg1tYXhfcG9vbF9zaXplGAYgASgFUgttYXhQb29sU2l6ZQ==');

@$core.Deprecated('Use actorIdDescriptor instead')
const ActorId$json = {
  '1': 'ActorId',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'system', '3': 2, '4': 1, '5': 9, '10': 'system'},
    {'1': 'parent', '3': 3, '4': 1, '5': 9, '10': 'parent'},
  ],
};

/// Descriptor for `ActorId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List actorIdDescriptor = $convert.base64Decode(
    'CgdBY3RvcklkEhIKBG5hbWUYASABKAlSBG5hbWUSFgoGc3lzdGVtGAIgASgJUgZzeXN0ZW0SFg'
    'oGcGFyZW50GAMgASgJUgZwYXJlbnQ=');

@$core.Deprecated('Use actorDescriptor instead')
const Actor$json = {
  '1': 'Actor',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.eigr.functions.protocol.actors.ActorId', '10': 'id'},
    {'1': 'state', '3': 2, '4': 1, '5': 11, '6': '.eigr.functions.protocol.actors.ActorState', '10': 'state'},
    {'1': 'metadata', '3': 6, '4': 1, '5': 11, '6': '.eigr.functions.protocol.actors.Metadata', '10': 'metadata'},
    {'1': 'settings', '3': 3, '4': 1, '5': 11, '6': '.eigr.functions.protocol.actors.ActorSettings', '10': 'settings'},
    {'1': 'actions', '3': 4, '4': 3, '5': 11, '6': '.eigr.functions.protocol.actors.Action', '10': 'actions'},
    {'1': 'timer_actions', '3': 5, '4': 3, '5': 11, '6': '.eigr.functions.protocol.actors.FixedTimerAction', '10': 'timerActions'},
  ],
};

/// Descriptor for `Actor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List actorDescriptor = $convert.base64Decode(
    'CgVBY3RvchI3CgJpZBgBIAEoCzInLmVpZ3IuZnVuY3Rpb25zLnByb3RvY29sLmFjdG9ycy5BY3'
    'RvcklkUgJpZBJACgVzdGF0ZRgCIAEoCzIqLmVpZ3IuZnVuY3Rpb25zLnByb3RvY29sLmFjdG9y'
    'cy5BY3RvclN0YXRlUgVzdGF0ZRJECghtZXRhZGF0YRgGIAEoCzIoLmVpZ3IuZnVuY3Rpb25zLn'
    'Byb3RvY29sLmFjdG9ycy5NZXRhZGF0YVIIbWV0YWRhdGESSQoIc2V0dGluZ3MYAyABKAsyLS5l'
    'aWdyLmZ1bmN0aW9ucy5wcm90b2NvbC5hY3RvcnMuQWN0b3JTZXR0aW5nc1IIc2V0dGluZ3MSQA'
    'oHYWN0aW9ucxgEIAMoCzImLmVpZ3IuZnVuY3Rpb25zLnByb3RvY29sLmFjdG9ycy5BY3Rpb25S'
    'B2FjdGlvbnMSVQoNdGltZXJfYWN0aW9ucxgFIAMoCzIwLmVpZ3IuZnVuY3Rpb25zLnByb3RvY2'
    '9sLmFjdG9ycy5GaXhlZFRpbWVyQWN0aW9uUgx0aW1lckFjdGlvbnM=');

