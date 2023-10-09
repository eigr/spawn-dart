//
//  Generated code. Do not modify.
//  source: eigr/functions/protocol/actors/actor.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// The type that defines the runtime characteristics of the Actor.
/// Regardless of the type of actor it is important that
/// all actors are registered during the proxy and host initialization phase.
class Kind extends $pb.ProtobufEnum {
  static const Kind UNKNOW_KIND = Kind._(0, _omitEnumNames ? '' : 'UNKNOW_KIND');
  static const Kind NAMED = Kind._(1, _omitEnumNames ? '' : 'NAMED');
  static const Kind UNAMED = Kind._(2, _omitEnumNames ? '' : 'UNAMED');
  static const Kind POOLED = Kind._(3, _omitEnumNames ? '' : 'POOLED');
  static const Kind PROXY = Kind._(4, _omitEnumNames ? '' : 'PROXY');

  static const $core.List<Kind> values = <Kind> [
    UNKNOW_KIND,
    NAMED,
    UNAMED,
    POOLED,
    PROXY,
  ];

  static final $core.Map<$core.int, Kind> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Kind? valueOf($core.int value) => _byValue[value];

  const Kind._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
