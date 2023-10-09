//
//  Generated code. Do not modify.
//  source: eigr/functions/protocol/actors/state.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use revisionDescriptor instead')
const Revision$json = {
  '1': 'Revision',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 3, '10': 'value'},
  ],
};

/// Descriptor for `Revision`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List revisionDescriptor = $convert.base64Decode(
    'CghSZXZpc2lvbhIUCgV2YWx1ZRgBIAEoA1IFdmFsdWU=');

@$core.Deprecated('Use checkpointDescriptor instead')
const Checkpoint$json = {
  '1': 'Checkpoint',
  '2': [
    {'1': 'revision', '3': 1, '4': 1, '5': 11, '6': '.eigr.functions.protocol.state.Revision', '10': 'revision'},
    {'1': 'state', '3': 2, '4': 1, '5': 11, '6': '.eigr.functions.protocol.actors.ActorState', '10': 'state'},
  ],
};

/// Descriptor for `Checkpoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List checkpointDescriptor = $convert.base64Decode(
    'CgpDaGVja3BvaW50EkMKCHJldmlzaW9uGAEgASgLMicuZWlnci5mdW5jdGlvbnMucHJvdG9jb2'
    'wuc3RhdGUuUmV2aXNpb25SCHJldmlzaW9uEkAKBXN0YXRlGAIgASgLMiouZWlnci5mdW5jdGlv'
    'bnMucHJvdG9jb2wuYWN0b3JzLkFjdG9yU3RhdGVSBXN0YXRl');

