//
//  Generated code. Do not modify.
//  source: eigr/functions/protocol/actors/protocol.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use statusDescriptor instead')
const Status$json = {
  '1': 'Status',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'OK', '2': 1},
    {'1': 'ACTOR_NOT_FOUND', '2': 2},
    {'1': 'ERROR', '2': 3},
  ],
};

/// Descriptor for `Status`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List statusDescriptor = $convert.base64Decode(
    'CgZTdGF0dXMSCwoHVU5LTk9XThAAEgYKAk9LEAESEwoPQUNUT1JfTk9UX0ZPVU5EEAISCQoFRV'
    'JST1IQAw==');

@$core.Deprecated('Use contextDescriptor instead')
const Context$json = {
  '1': 'Context',
  '2': [
    {'1': 'state', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Any', '10': 'state'},
    {'1': 'metadata', '3': 4, '4': 3, '5': 11, '6': '.eigr.functions.protocol.Context.MetadataEntry', '10': 'metadata'},
    {'1': 'tags', '3': 5, '4': 3, '5': 11, '6': '.eigr.functions.protocol.Context.TagsEntry', '10': 'tags'},
    {'1': 'caller', '3': 2, '4': 1, '5': 11, '6': '.eigr.functions.protocol.actors.ActorId', '10': 'caller'},
    {'1': 'self', '3': 3, '4': 1, '5': 11, '6': '.eigr.functions.protocol.actors.ActorId', '10': 'self'},
  ],
  '3': [Context_MetadataEntry$json, Context_TagsEntry$json],
};

@$core.Deprecated('Use contextDescriptor instead')
const Context_MetadataEntry$json = {
  '1': 'MetadataEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use contextDescriptor instead')
const Context_TagsEntry$json = {
  '1': 'TagsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `Context`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contextDescriptor = $convert.base64Decode(
    'CgdDb250ZXh0EioKBXN0YXRlGAEgASgLMhQuZ29vZ2xlLnByb3RvYnVmLkFueVIFc3RhdGUSSg'
    'oIbWV0YWRhdGEYBCADKAsyLi5laWdyLmZ1bmN0aW9ucy5wcm90b2NvbC5Db250ZXh0Lk1ldGFk'
    'YXRhRW50cnlSCG1ldGFkYXRhEj4KBHRhZ3MYBSADKAsyKi5laWdyLmZ1bmN0aW9ucy5wcm90b2'
    'NvbC5Db250ZXh0LlRhZ3NFbnRyeVIEdGFncxI/CgZjYWxsZXIYAiABKAsyJy5laWdyLmZ1bmN0'
    'aW9ucy5wcm90b2NvbC5hY3RvcnMuQWN0b3JJZFIGY2FsbGVyEjsKBHNlbGYYAyABKAsyJy5laW'
    'dyLmZ1bmN0aW9ucy5wcm90b2NvbC5hY3RvcnMuQWN0b3JJZFIEc2VsZho7Cg1NZXRhZGF0YUVu'
    'dHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAEaNwoJVGFnc0'
    'VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use noopDescriptor instead')
const Noop$json = {
  '1': 'Noop',
};

/// Descriptor for `Noop`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noopDescriptor = $convert.base64Decode(
    'CgROb29w');

@$core.Deprecated('Use jSONTypeDescriptor instead')
const JSONType$json = {
  '1': 'JSONType',
  '2': [
    {'1': 'content', '3': 1, '4': 1, '5': 9, '10': 'content'},
  ],
};

/// Descriptor for `JSONType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jSONTypeDescriptor = $convert.base64Decode(
    'CghKU09OVHlwZRIYCgdjb250ZW50GAEgASgJUgdjb250ZW50');

@$core.Deprecated('Use registrationRequestDescriptor instead')
const RegistrationRequest$json = {
  '1': 'RegistrationRequest',
  '2': [
    {'1': 'service_info', '3': 1, '4': 1, '5': 11, '6': '.eigr.functions.protocol.ServiceInfo', '10': 'serviceInfo'},
    {'1': 'actor_system', '3': 2, '4': 1, '5': 11, '6': '.eigr.functions.protocol.actors.ActorSystem', '10': 'actorSystem'},
  ],
};

/// Descriptor for `RegistrationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registrationRequestDescriptor = $convert.base64Decode(
    'ChNSZWdpc3RyYXRpb25SZXF1ZXN0EkcKDHNlcnZpY2VfaW5mbxgBIAEoCzIkLmVpZ3IuZnVuY3'
    'Rpb25zLnByb3RvY29sLlNlcnZpY2VJbmZvUgtzZXJ2aWNlSW5mbxJOCgxhY3Rvcl9zeXN0ZW0Y'
    'AiABKAsyKy5laWdyLmZ1bmN0aW9ucy5wcm90b2NvbC5hY3RvcnMuQWN0b3JTeXN0ZW1SC2FjdG'
    '9yU3lzdGVt');

@$core.Deprecated('Use registrationResponseDescriptor instead')
const RegistrationResponse$json = {
  '1': 'RegistrationResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 11, '6': '.eigr.functions.protocol.RequestStatus', '10': 'status'},
    {'1': 'proxy_info', '3': 2, '4': 1, '5': 11, '6': '.eigr.functions.protocol.ProxyInfo', '10': 'proxyInfo'},
  ],
};

/// Descriptor for `RegistrationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registrationResponseDescriptor = $convert.base64Decode(
    'ChRSZWdpc3RyYXRpb25SZXNwb25zZRI+CgZzdGF0dXMYASABKAsyJi5laWdyLmZ1bmN0aW9ucy'
    '5wcm90b2NvbC5SZXF1ZXN0U3RhdHVzUgZzdGF0dXMSQQoKcHJveHlfaW5mbxgCIAEoCzIiLmVp'
    'Z3IuZnVuY3Rpb25zLnByb3RvY29sLlByb3h5SW5mb1IJcHJveHlJbmZv');

@$core.Deprecated('Use serviceInfoDescriptor instead')
const ServiceInfo$json = {
  '1': 'ServiceInfo',
  '2': [
    {'1': 'service_name', '3': 1, '4': 1, '5': 9, '10': 'serviceName'},
    {'1': 'service_version', '3': 2, '4': 1, '5': 9, '10': 'serviceVersion'},
    {'1': 'service_runtime', '3': 3, '4': 1, '5': 9, '10': 'serviceRuntime'},
    {'1': 'support_library_name', '3': 4, '4': 1, '5': 9, '10': 'supportLibraryName'},
    {'1': 'support_library_version', '3': 5, '4': 1, '5': 9, '10': 'supportLibraryVersion'},
    {'1': 'protocol_major_version', '3': 6, '4': 1, '5': 5, '10': 'protocolMajorVersion'},
    {'1': 'protocol_minor_version', '3': 7, '4': 1, '5': 5, '10': 'protocolMinorVersion'},
  ],
};

/// Descriptor for `ServiceInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceInfoDescriptor = $convert.base64Decode(
    'CgtTZXJ2aWNlSW5mbxIhCgxzZXJ2aWNlX25hbWUYASABKAlSC3NlcnZpY2VOYW1lEicKD3Nlcn'
    'ZpY2VfdmVyc2lvbhgCIAEoCVIOc2VydmljZVZlcnNpb24SJwoPc2VydmljZV9ydW50aW1lGAMg'
    'ASgJUg5zZXJ2aWNlUnVudGltZRIwChRzdXBwb3J0X2xpYnJhcnlfbmFtZRgEIAEoCVISc3VwcG'
    '9ydExpYnJhcnlOYW1lEjYKF3N1cHBvcnRfbGlicmFyeV92ZXJzaW9uGAUgASgJUhVzdXBwb3J0'
    'TGlicmFyeVZlcnNpb24SNAoWcHJvdG9jb2xfbWFqb3JfdmVyc2lvbhgGIAEoBVIUcHJvdG9jb2'
    'xNYWpvclZlcnNpb24SNAoWcHJvdG9jb2xfbWlub3JfdmVyc2lvbhgHIAEoBVIUcHJvdG9jb2xN'
    'aW5vclZlcnNpb24=');

@$core.Deprecated('Use spawnRequestDescriptor instead')
const SpawnRequest$json = {
  '1': 'SpawnRequest',
  '2': [
    {'1': 'actors', '3': 1, '4': 3, '5': 11, '6': '.eigr.functions.protocol.actors.ActorId', '10': 'actors'},
  ],
};

/// Descriptor for `SpawnRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spawnRequestDescriptor = $convert.base64Decode(
    'CgxTcGF3blJlcXVlc3QSPwoGYWN0b3JzGAEgAygLMicuZWlnci5mdW5jdGlvbnMucHJvdG9jb2'
    'wuYWN0b3JzLkFjdG9ySWRSBmFjdG9ycw==');

@$core.Deprecated('Use spawnResponseDescriptor instead')
const SpawnResponse$json = {
  '1': 'SpawnResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 11, '6': '.eigr.functions.protocol.RequestStatus', '10': 'status'},
  ],
};

/// Descriptor for `SpawnResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spawnResponseDescriptor = $convert.base64Decode(
    'Cg1TcGF3blJlc3BvbnNlEj4KBnN0YXR1cxgBIAEoCzImLmVpZ3IuZnVuY3Rpb25zLnByb3RvY2'
    '9sLlJlcXVlc3RTdGF0dXNSBnN0YXR1cw==');

@$core.Deprecated('Use proxyInfoDescriptor instead')
const ProxyInfo$json = {
  '1': 'ProxyInfo',
  '2': [
    {'1': 'protocol_major_version', '3': 1, '4': 1, '5': 5, '10': 'protocolMajorVersion'},
    {'1': 'protocol_minor_version', '3': 2, '4': 1, '5': 5, '10': 'protocolMinorVersion'},
    {'1': 'proxy_name', '3': 3, '4': 1, '5': 9, '10': 'proxyName'},
    {'1': 'proxy_version', '3': 4, '4': 1, '5': 9, '10': 'proxyVersion'},
  ],
};

/// Descriptor for `ProxyInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List proxyInfoDescriptor = $convert.base64Decode(
    'CglQcm94eUluZm8SNAoWcHJvdG9jb2xfbWFqb3JfdmVyc2lvbhgBIAEoBVIUcHJvdG9jb2xNYW'
    'pvclZlcnNpb24SNAoWcHJvdG9jb2xfbWlub3JfdmVyc2lvbhgCIAEoBVIUcHJvdG9jb2xNaW5v'
    'clZlcnNpb24SHQoKcHJveHlfbmFtZRgDIAEoCVIJcHJveHlOYW1lEiMKDXByb3h5X3ZlcnNpb2'
    '4YBCABKAlSDHByb3h5VmVyc2lvbg==');

@$core.Deprecated('Use sideEffectDescriptor instead')
const SideEffect$json = {
  '1': 'SideEffect',
  '2': [
    {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.eigr.functions.protocol.InvocationRequest', '10': 'request'},
  ],
};

/// Descriptor for `SideEffect`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sideEffectDescriptor = $convert.base64Decode(
    'CgpTaWRlRWZmZWN0EkQKB3JlcXVlc3QYASABKAsyKi5laWdyLmZ1bmN0aW9ucy5wcm90b2NvbC'
    '5JbnZvY2F0aW9uUmVxdWVzdFIHcmVxdWVzdA==');

@$core.Deprecated('Use broadcastDescriptor instead')
const Broadcast$json = {
  '1': 'Broadcast',
  '2': [
    {'1': 'channel_group', '3': 1, '4': 1, '5': 9, '10': 'channelGroup'},
    {'1': 'action_name', '3': 2, '4': 1, '5': 9, '10': 'actionName'},
    {'1': 'value', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Any', '9': 0, '10': 'value'},
    {'1': 'noop', '3': 4, '4': 1, '5': 11, '6': '.eigr.functions.protocol.Noop', '9': 0, '10': 'noop'},
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `Broadcast`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List broadcastDescriptor = $convert.base64Decode(
    'CglCcm9hZGNhc3QSIwoNY2hhbm5lbF9ncm91cBgBIAEoCVIMY2hhbm5lbEdyb3VwEh8KC2FjdG'
    'lvbl9uYW1lGAIgASgJUgphY3Rpb25OYW1lEiwKBXZhbHVlGAMgASgLMhQuZ29vZ2xlLnByb3Rv'
    'YnVmLkFueUgAUgV2YWx1ZRIzCgRub29wGAQgASgLMh0uZWlnci5mdW5jdGlvbnMucHJvdG9jb2'
    'wuTm9vcEgAUgRub29wQgkKB3BheWxvYWQ=');

@$core.Deprecated('Use pipeDescriptor instead')
const Pipe$json = {
  '1': 'Pipe',
  '2': [
    {'1': 'actor', '3': 1, '4': 1, '5': 9, '10': 'actor'},
    {'1': 'action_name', '3': 2, '4': 1, '5': 9, '10': 'actionName'},
  ],
};

/// Descriptor for `Pipe`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pipeDescriptor = $convert.base64Decode(
    'CgRQaXBlEhQKBWFjdG9yGAEgASgJUgVhY3RvchIfCgthY3Rpb25fbmFtZRgCIAEoCVIKYWN0aW'
    '9uTmFtZQ==');

@$core.Deprecated('Use forwardDescriptor instead')
const Forward$json = {
  '1': 'Forward',
  '2': [
    {'1': 'actor', '3': 1, '4': 1, '5': 9, '10': 'actor'},
    {'1': 'action_name', '3': 2, '4': 1, '5': 9, '10': 'actionName'},
  ],
};

/// Descriptor for `Forward`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forwardDescriptor = $convert.base64Decode(
    'CgdGb3J3YXJkEhQKBWFjdG9yGAEgASgJUgVhY3RvchIfCgthY3Rpb25fbmFtZRgCIAEoCVIKYW'
    'N0aW9uTmFtZQ==');

@$core.Deprecated('Use workflowDescriptor instead')
const Workflow$json = {
  '1': 'Workflow',
  '2': [
    {'1': 'broadcast', '3': 2, '4': 1, '5': 11, '6': '.eigr.functions.protocol.Broadcast', '10': 'broadcast'},
    {'1': 'effects', '3': 1, '4': 3, '5': 11, '6': '.eigr.functions.protocol.SideEffect', '10': 'effects'},
    {'1': 'pipe', '3': 3, '4': 1, '5': 11, '6': '.eigr.functions.protocol.Pipe', '9': 0, '10': 'pipe'},
    {'1': 'forward', '3': 4, '4': 1, '5': 11, '6': '.eigr.functions.protocol.Forward', '9': 0, '10': 'forward'},
  ],
  '8': [
    {'1': 'routing'},
  ],
};

/// Descriptor for `Workflow`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List workflowDescriptor = $convert.base64Decode(
    'CghXb3JrZmxvdxJACglicm9hZGNhc3QYAiABKAsyIi5laWdyLmZ1bmN0aW9ucy5wcm90b2NvbC'
    '5Ccm9hZGNhc3RSCWJyb2FkY2FzdBI9CgdlZmZlY3RzGAEgAygLMiMuZWlnci5mdW5jdGlvbnMu'
    'cHJvdG9jb2wuU2lkZUVmZmVjdFIHZWZmZWN0cxIzCgRwaXBlGAMgASgLMh0uZWlnci5mdW5jdG'
    'lvbnMucHJvdG9jb2wuUGlwZUgAUgRwaXBlEjwKB2ZvcndhcmQYBCABKAsyIC5laWdyLmZ1bmN0'
    'aW9ucy5wcm90b2NvbC5Gb3J3YXJkSABSB2ZvcndhcmRCCQoHcm91dGluZw==');

@$core.Deprecated('Use invocationRequestDescriptor instead')
const InvocationRequest$json = {
  '1': 'InvocationRequest',
  '2': [
    {'1': 'system', '3': 1, '4': 1, '5': 11, '6': '.eigr.functions.protocol.actors.ActorSystem', '10': 'system'},
    {'1': 'actor', '3': 2, '4': 1, '5': 11, '6': '.eigr.functions.protocol.actors.Actor', '10': 'actor'},
    {'1': 'action_name', '3': 3, '4': 1, '5': 9, '10': 'actionName'},
    {'1': 'value', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Any', '9': 0, '10': 'value'},
    {'1': 'noop', '3': 7, '4': 1, '5': 11, '6': '.eigr.functions.protocol.Noop', '9': 0, '10': 'noop'},
    {'1': 'async', '3': 5, '4': 1, '5': 8, '10': 'async'},
    {'1': 'caller', '3': 6, '4': 1, '5': 11, '6': '.eigr.functions.protocol.actors.ActorId', '10': 'caller'},
    {'1': 'metadata', '3': 8, '4': 3, '5': 11, '6': '.eigr.functions.protocol.InvocationRequest.MetadataEntry', '10': 'metadata'},
    {'1': 'scheduled_to', '3': 9, '4': 1, '5': 3, '10': 'scheduledTo'},
    {'1': 'pooled', '3': 10, '4': 1, '5': 8, '10': 'pooled'},
  ],
  '3': [InvocationRequest_MetadataEntry$json],
  '8': [
    {'1': 'payload'},
  ],
};

@$core.Deprecated('Use invocationRequestDescriptor instead')
const InvocationRequest_MetadataEntry$json = {
  '1': 'MetadataEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `InvocationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invocationRequestDescriptor = $convert.base64Decode(
    'ChFJbnZvY2F0aW9uUmVxdWVzdBJDCgZzeXN0ZW0YASABKAsyKy5laWdyLmZ1bmN0aW9ucy5wcm'
    '90b2NvbC5hY3RvcnMuQWN0b3JTeXN0ZW1SBnN5c3RlbRI7CgVhY3RvchgCIAEoCzIlLmVpZ3Iu'
    'ZnVuY3Rpb25zLnByb3RvY29sLmFjdG9ycy5BY3RvclIFYWN0b3ISHwoLYWN0aW9uX25hbWUYAy'
    'ABKAlSCmFjdGlvbk5hbWUSLAoFdmFsdWUYBCABKAsyFC5nb29nbGUucHJvdG9idWYuQW55SABS'
    'BXZhbHVlEjMKBG5vb3AYByABKAsyHS5laWdyLmZ1bmN0aW9ucy5wcm90b2NvbC5Ob29wSABSBG'
    '5vb3ASFAoFYXN5bmMYBSABKAhSBWFzeW5jEj8KBmNhbGxlchgGIAEoCzInLmVpZ3IuZnVuY3Rp'
    'b25zLnByb3RvY29sLmFjdG9ycy5BY3RvcklkUgZjYWxsZXISVAoIbWV0YWRhdGEYCCADKAsyOC'
    '5laWdyLmZ1bmN0aW9ucy5wcm90b2NvbC5JbnZvY2F0aW9uUmVxdWVzdC5NZXRhZGF0YUVudHJ5'
    'UghtZXRhZGF0YRIhCgxzY2hlZHVsZWRfdG8YCSABKANSC3NjaGVkdWxlZFRvEhYKBnBvb2xlZB'
    'gKIAEoCFIGcG9vbGVkGjsKDU1ldGFkYXRhRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFs'
    'dWUYAiABKAlSBXZhbHVlOgI4AUIJCgdwYXlsb2Fk');

@$core.Deprecated('Use actorInvocationDescriptor instead')
const ActorInvocation$json = {
  '1': 'ActorInvocation',
  '2': [
    {'1': 'actor', '3': 1, '4': 1, '5': 11, '6': '.eigr.functions.protocol.actors.ActorId', '10': 'actor'},
    {'1': 'action_name', '3': 2, '4': 1, '5': 9, '10': 'actionName'},
    {'1': 'current_context', '3': 3, '4': 1, '5': 11, '6': '.eigr.functions.protocol.Context', '10': 'currentContext'},
    {'1': 'value', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Any', '9': 0, '10': 'value'},
    {'1': 'noop', '3': 5, '4': 1, '5': 11, '6': '.eigr.functions.protocol.Noop', '9': 0, '10': 'noop'},
    {'1': 'caller', '3': 6, '4': 1, '5': 11, '6': '.eigr.functions.protocol.actors.ActorId', '10': 'caller'},
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `ActorInvocation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List actorInvocationDescriptor = $convert.base64Decode(
    'Cg9BY3Rvckludm9jYXRpb24SPQoFYWN0b3IYASABKAsyJy5laWdyLmZ1bmN0aW9ucy5wcm90b2'
    'NvbC5hY3RvcnMuQWN0b3JJZFIFYWN0b3ISHwoLYWN0aW9uX25hbWUYAiABKAlSCmFjdGlvbk5h'
    'bWUSSQoPY3VycmVudF9jb250ZXh0GAMgASgLMiAuZWlnci5mdW5jdGlvbnMucHJvdG9jb2wuQ2'
    '9udGV4dFIOY3VycmVudENvbnRleHQSLAoFdmFsdWUYBCABKAsyFC5nb29nbGUucHJvdG9idWYu'
    'QW55SABSBXZhbHVlEjMKBG5vb3AYBSABKAsyHS5laWdyLmZ1bmN0aW9ucy5wcm90b2NvbC5Ob2'
    '9wSABSBG5vb3ASPwoGY2FsbGVyGAYgASgLMicuZWlnci5mdW5jdGlvbnMucHJvdG9jb2wuYWN0'
    'b3JzLkFjdG9ySWRSBmNhbGxlckIJCgdwYXlsb2Fk');

@$core.Deprecated('Use actorInvocationResponseDescriptor instead')
const ActorInvocationResponse$json = {
  '1': 'ActorInvocationResponse',
  '2': [
    {'1': 'actor_name', '3': 1, '4': 1, '5': 9, '10': 'actorName'},
    {'1': 'actor_system', '3': 2, '4': 1, '5': 9, '10': 'actorSystem'},
    {'1': 'updated_context', '3': 3, '4': 1, '5': 11, '6': '.eigr.functions.protocol.Context', '10': 'updatedContext'},
    {'1': 'value', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Any', '9': 0, '10': 'value'},
    {'1': 'noop', '3': 6, '4': 1, '5': 11, '6': '.eigr.functions.protocol.Noop', '9': 0, '10': 'noop'},
    {'1': 'workflow', '3': 5, '4': 1, '5': 11, '6': '.eigr.functions.protocol.Workflow', '10': 'workflow'},
    {'1': 'checkpoint', '3': 7, '4': 1, '5': 8, '10': 'checkpoint'},
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `ActorInvocationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List actorInvocationResponseDescriptor = $convert.base64Decode(
    'ChdBY3Rvckludm9jYXRpb25SZXNwb25zZRIdCgphY3Rvcl9uYW1lGAEgASgJUglhY3Rvck5hbW'
    'USIQoMYWN0b3Jfc3lzdGVtGAIgASgJUgthY3RvclN5c3RlbRJJCg91cGRhdGVkX2NvbnRleHQY'
    'AyABKAsyIC5laWdyLmZ1bmN0aW9ucy5wcm90b2NvbC5Db250ZXh0Ug51cGRhdGVkQ29udGV4dB'
    'IsCgV2YWx1ZRgEIAEoCzIULmdvb2dsZS5wcm90b2J1Zi5BbnlIAFIFdmFsdWUSMwoEbm9vcBgG'
    'IAEoCzIdLmVpZ3IuZnVuY3Rpb25zLnByb3RvY29sLk5vb3BIAFIEbm9vcBI9Cgh3b3JrZmxvdx'
    'gFIAEoCzIhLmVpZ3IuZnVuY3Rpb25zLnByb3RvY29sLldvcmtmbG93Ugh3b3JrZmxvdxIeCgpj'
    'aGVja3BvaW50GAcgASgIUgpjaGVja3BvaW50QgkKB3BheWxvYWQ=');

@$core.Deprecated('Use invocationResponseDescriptor instead')
const InvocationResponse$json = {
  '1': 'InvocationResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 11, '6': '.eigr.functions.protocol.RequestStatus', '10': 'status'},
    {'1': 'system', '3': 2, '4': 1, '5': 11, '6': '.eigr.functions.protocol.actors.ActorSystem', '10': 'system'},
    {'1': 'actor', '3': 3, '4': 1, '5': 11, '6': '.eigr.functions.protocol.actors.Actor', '10': 'actor'},
    {'1': 'value', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Any', '9': 0, '10': 'value'},
    {'1': 'noop', '3': 5, '4': 1, '5': 11, '6': '.eigr.functions.protocol.Noop', '9': 0, '10': 'noop'},
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `InvocationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invocationResponseDescriptor = $convert.base64Decode(
    'ChJJbnZvY2F0aW9uUmVzcG9uc2USPgoGc3RhdHVzGAEgASgLMiYuZWlnci5mdW5jdGlvbnMucH'
    'JvdG9jb2wuUmVxdWVzdFN0YXR1c1IGc3RhdHVzEkMKBnN5c3RlbRgCIAEoCzIrLmVpZ3IuZnVu'
    'Y3Rpb25zLnByb3RvY29sLmFjdG9ycy5BY3RvclN5c3RlbVIGc3lzdGVtEjsKBWFjdG9yGAMgAS'
    'gLMiUuZWlnci5mdW5jdGlvbnMucHJvdG9jb2wuYWN0b3JzLkFjdG9yUgVhY3RvchIsCgV2YWx1'
    'ZRgEIAEoCzIULmdvb2dsZS5wcm90b2J1Zi5BbnlIAFIFdmFsdWUSMwoEbm9vcBgFIAEoCzIdLm'
    'VpZ3IuZnVuY3Rpb25zLnByb3RvY29sLk5vb3BIAFIEbm9vcEIJCgdwYXlsb2Fk');

@$core.Deprecated('Use requestStatusDescriptor instead')
const RequestStatus$json = {
  '1': 'RequestStatus',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.eigr.functions.protocol.Status', '10': 'status'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `RequestStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestStatusDescriptor = $convert.base64Decode(
    'Cg1SZXF1ZXN0U3RhdHVzEjcKBnN0YXR1cxgBIAEoDjIfLmVpZ3IuZnVuY3Rpb25zLnByb3RvY2'
    '9sLlN0YXR1c1IGc3RhdHVzEhgKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2U=');

