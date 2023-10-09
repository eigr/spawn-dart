//
//  Generated code. Do not modify.
//  source: eigr/functions/protocol/actors/protocol.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Status extends $pb.ProtobufEnum {
  static const Status UNKNOWN = Status._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const Status OK = Status._(1, _omitEnumNames ? '' : 'OK');
  static const Status ACTOR_NOT_FOUND = Status._(2, _omitEnumNames ? '' : 'ACTOR_NOT_FOUND');
  static const Status ERROR = Status._(3, _omitEnumNames ? '' : 'ERROR');

  static const $core.List<Status> values = <Status> [
    UNKNOWN,
    OK,
    ACTOR_NOT_FOUND,
    ERROR,
  ];

  static final $core.Map<$core.int, Status> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Status? valueOf($core.int value) => _byValue[value];

  const Status._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
