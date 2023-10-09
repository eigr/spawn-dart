//
//  Generated code. Do not modify.
//  source: eigr/functions/protocol/actors/state.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'actor.pb.dart' as $1;

/// A revision is just a version number for a record in the snapshot table that stores the actors' state.
/// When an actor has its snaphost timeout, it increments its internal revision number and saves it along with its internal data.
/// Some of the persistence adapters can use this revision number to find the state of an Actor at a given point in time.
/// As Actors in Spawn persist their internal data as snapshots from time to time a revision number may not indicate the state of a given change
/// but will most likely point to the exact time that a given actor's internal state was persisted into the database.
class Revision extends $pb.GeneratedMessage {
  factory Revision({
    $fixnum.Int64? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  Revision._() : super();
  factory Revision.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Revision.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Revision', package: const $pb.PackageName(_omitMessageNames ? '' : 'eigr.functions.protocol.state'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Revision clone() => Revision()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Revision copyWith(void Function(Revision) updates) => super.copyWith((message) => updates(message as Revision)) as Revision;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Revision create() => Revision._();
  Revision createEmptyInstance() => create();
  static $pb.PbList<Revision> createRepeated() => $pb.PbList<Revision>();
  @$core.pragma('dart2js:noInline')
  static Revision getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Revision>(create);
  static Revision? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get value => $_getI64(0);
  @$pb.TagNumber(1)
  set value($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

/// A checkpoint encapsulates a revision and the state it represents.
class Checkpoint extends $pb.GeneratedMessage {
  factory Checkpoint({
    Revision? revision,
    $1.ActorState? state,
  }) {
    final $result = create();
    if (revision != null) {
      $result.revision = revision;
    }
    if (state != null) {
      $result.state = state;
    }
    return $result;
  }
  Checkpoint._() : super();
  factory Checkpoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Checkpoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Checkpoint', package: const $pb.PackageName(_omitMessageNames ? '' : 'eigr.functions.protocol.state'), createEmptyInstance: create)
    ..aOM<Revision>(1, _omitFieldNames ? '' : 'revision', subBuilder: Revision.create)
    ..aOM<$1.ActorState>(2, _omitFieldNames ? '' : 'state', subBuilder: $1.ActorState.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Checkpoint clone() => Checkpoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Checkpoint copyWith(void Function(Checkpoint) updates) => super.copyWith((message) => updates(message as Checkpoint)) as Checkpoint;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Checkpoint create() => Checkpoint._();
  Checkpoint createEmptyInstance() => create();
  static $pb.PbList<Checkpoint> createRepeated() => $pb.PbList<Checkpoint>();
  @$core.pragma('dart2js:noInline')
  static Checkpoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Checkpoint>(create);
  static Checkpoint? _defaultInstance;

  @$pb.TagNumber(1)
  Revision get revision => $_getN(0);
  @$pb.TagNumber(1)
  set revision(Revision v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRevision() => $_has(0);
  @$pb.TagNumber(1)
  void clearRevision() => clearField(1);
  @$pb.TagNumber(1)
  Revision ensureRevision() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.ActorState get state => $_getN(1);
  @$pb.TagNumber(2)
  set state($1.ActorState v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);
  @$pb.TagNumber(2)
  $1.ActorState ensureState() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
