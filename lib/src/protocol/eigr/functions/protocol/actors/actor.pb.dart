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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'package:spawn_dart/src/google/protobuf/any.pb.dart' as $0;
import 'actor.pbenum.dart';

export 'actor.pbenum.dart';

class Registry extends $pb.GeneratedMessage {
  factory Registry({
    $core.Map<$core.String, Actor>? actors,
  }) {
    final $result = create();
    if (actors != null) {
      $result.actors.addAll(actors);
    }
    return $result;
  }
  Registry._() : super();
  factory Registry.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Registry.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Registry',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol.actors'),
      createEmptyInstance: create)
    ..m<$core.String, Actor>(1, _omitFieldNames ? '' : 'actors',
        entryClassName: 'Registry.ActorsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: Actor.create,
        valueDefaultOrMaker: Actor.getDefault,
        packageName: const $pb.PackageName('eigr.functions.protocol.actors'))
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Registry clone() => Registry()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Registry copyWith(void Function(Registry) updates) =>
      super.copyWith((message) => updates(message as Registry)) as Registry;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Registry create() => Registry._();
  Registry createEmptyInstance() => create();
  static $pb.PbList<Registry> createRepeated() => $pb.PbList<Registry>();
  @$core.pragma('dart2js:noInline')
  static Registry getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Registry>(create);
  static Registry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, Actor> get actors => $_getMap(0);
}

class ActorSystem extends $pb.GeneratedMessage {
  factory ActorSystem({
    $core.String? name,
    Registry? registry,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (registry != null) {
      $result.registry = registry;
    }
    return $result;
  }
  ActorSystem._() : super();
  factory ActorSystem.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ActorSystem.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ActorSystem',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol.actors'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<Registry>(2, _omitFieldNames ? '' : 'registry',
        subBuilder: Registry.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ActorSystem clone() => ActorSystem()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ActorSystem copyWith(void Function(ActorSystem) updates) =>
      super.copyWith((message) => updates(message as ActorSystem))
          as ActorSystem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActorSystem create() => ActorSystem._();
  ActorSystem createEmptyInstance() => create();
  static $pb.PbList<ActorSystem> createRepeated() => $pb.PbList<ActorSystem>();
  @$core.pragma('dart2js:noInline')
  static ActorSystem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ActorSystem>(create);
  static ActorSystem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  Registry get registry => $_getN(1);
  @$pb.TagNumber(2)
  set registry(Registry v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRegistry() => $_has(1);
  @$pb.TagNumber(2)
  void clearRegistry() => clearField(2);
  @$pb.TagNumber(2)
  Registry ensureRegistry() => $_ensure(1);
}

enum ActorSnapshotStrategy_Strategy { timeout, notSet }

/// A strategy for save state.
class ActorSnapshotStrategy extends $pb.GeneratedMessage {
  factory ActorSnapshotStrategy({
    TimeoutStrategy? timeout,
  }) {
    final $result = create();
    if (timeout != null) {
      $result.timeout = timeout;
    }
    return $result;
  }
  ActorSnapshotStrategy._() : super();
  factory ActorSnapshotStrategy.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ActorSnapshotStrategy.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ActorSnapshotStrategy_Strategy>
      _ActorSnapshotStrategy_StrategyByTag = {
    1: ActorSnapshotStrategy_Strategy.timeout,
    0: ActorSnapshotStrategy_Strategy.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ActorSnapshotStrategy',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol.actors'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<TimeoutStrategy>(1, _omitFieldNames ? '' : 'timeout',
        subBuilder: TimeoutStrategy.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ActorSnapshotStrategy clone() =>
      ActorSnapshotStrategy()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ActorSnapshotStrategy copyWith(
          void Function(ActorSnapshotStrategy) updates) =>
      super.copyWith((message) => updates(message as ActorSnapshotStrategy))
          as ActorSnapshotStrategy;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActorSnapshotStrategy create() => ActorSnapshotStrategy._();
  ActorSnapshotStrategy createEmptyInstance() => create();
  static $pb.PbList<ActorSnapshotStrategy> createRepeated() =>
      $pb.PbList<ActorSnapshotStrategy>();
  @$core.pragma('dart2js:noInline')
  static ActorSnapshotStrategy getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ActorSnapshotStrategy>(create);
  static ActorSnapshotStrategy? _defaultInstance;

  ActorSnapshotStrategy_Strategy whichStrategy() =>
      _ActorSnapshotStrategy_StrategyByTag[$_whichOneof(0)]!;
  void clearStrategy() => clearField($_whichOneof(0));

  /// the timeout strategy.
  @$pb.TagNumber(1)
  TimeoutStrategy get timeout => $_getN(0);
  @$pb.TagNumber(1)
  set timeout(TimeoutStrategy v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTimeout() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimeout() => clearField(1);
  @$pb.TagNumber(1)
  TimeoutStrategy ensureTimeout() => $_ensure(0);
}

enum ActorDeactivationStrategy_Strategy { timeout, notSet }

/// A strategy which a user function's entity is passivated.
class ActorDeactivationStrategy extends $pb.GeneratedMessage {
  factory ActorDeactivationStrategy({
    TimeoutStrategy? timeout,
  }) {
    final $result = create();
    if (timeout != null) {
      $result.timeout = timeout;
    }
    return $result;
  }
  ActorDeactivationStrategy._() : super();
  factory ActorDeactivationStrategy.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ActorDeactivationStrategy.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ActorDeactivationStrategy_Strategy>
      _ActorDeactivationStrategy_StrategyByTag = {
    1: ActorDeactivationStrategy_Strategy.timeout,
    0: ActorDeactivationStrategy_Strategy.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ActorDeactivationStrategy',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol.actors'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<TimeoutStrategy>(1, _omitFieldNames ? '' : 'timeout',
        subBuilder: TimeoutStrategy.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ActorDeactivationStrategy clone() =>
      ActorDeactivationStrategy()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ActorDeactivationStrategy copyWith(
          void Function(ActorDeactivationStrategy) updates) =>
      super.copyWith((message) => updates(message as ActorDeactivationStrategy))
          as ActorDeactivationStrategy;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActorDeactivationStrategy create() => ActorDeactivationStrategy._();
  ActorDeactivationStrategy createEmptyInstance() => create();
  static $pb.PbList<ActorDeactivationStrategy> createRepeated() =>
      $pb.PbList<ActorDeactivationStrategy>();
  @$core.pragma('dart2js:noInline')
  static ActorDeactivationStrategy getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ActorDeactivationStrategy>(create);
  static ActorDeactivationStrategy? _defaultInstance;

  ActorDeactivationStrategy_Strategy whichStrategy() =>
      _ActorDeactivationStrategy_StrategyByTag[$_whichOneof(0)]!;
  void clearStrategy() => clearField($_whichOneof(0));

  /// the timeout strategy.
  @$pb.TagNumber(1)
  TimeoutStrategy get timeout => $_getN(0);
  @$pb.TagNumber(1)
  set timeout(TimeoutStrategy v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTimeout() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimeout() => clearField(1);
  @$pb.TagNumber(1)
  TimeoutStrategy ensureTimeout() => $_ensure(0);
}

/// A strategy based on a timeout.
class TimeoutStrategy extends $pb.GeneratedMessage {
  factory TimeoutStrategy({
    $fixnum.Int64? timeout,
  }) {
    final $result = create();
    if (timeout != null) {
      $result.timeout = timeout;
    }
    return $result;
  }
  TimeoutStrategy._() : super();
  factory TimeoutStrategy.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TimeoutStrategy.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TimeoutStrategy',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol.actors'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'timeout')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TimeoutStrategy clone() => TimeoutStrategy()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TimeoutStrategy copyWith(void Function(TimeoutStrategy) updates) =>
      super.copyWith((message) => updates(message as TimeoutStrategy))
          as TimeoutStrategy;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TimeoutStrategy create() => TimeoutStrategy._();
  TimeoutStrategy createEmptyInstance() => create();
  static $pb.PbList<TimeoutStrategy> createRepeated() =>
      $pb.PbList<TimeoutStrategy>();
  @$core.pragma('dart2js:noInline')
  static TimeoutStrategy getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TimeoutStrategy>(create);
  static TimeoutStrategy? _defaultInstance;

  /// The timeout in millis
  @$pb.TagNumber(1)
  $fixnum.Int64 get timeout => $_getI64(0);
  @$pb.TagNumber(1)
  set timeout($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTimeout() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimeout() => clearField(1);
}

/// A action represents an action that the user can perform on an Actor.
/// Actions in supporting languages are represented by functions or methods.
/// An Actor action has nothing to do with the semantics of Actions in a CQRS/EventSourced system.
/// It just represents an action that supporting languages can invoke.
class Action extends $pb.GeneratedMessage {
  factory Action({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  Action._() : super();
  factory Action.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Action.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Action',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol.actors'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Action clone() => Action()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Action copyWith(void Function(Action) updates) =>
      super.copyWith((message) => updates(message as Action)) as Action;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Action create() => Action._();
  Action createEmptyInstance() => create();
  static $pb.PbList<Action> createRepeated() => $pb.PbList<Action>();
  @$core.pragma('dart2js:noInline')
  static Action getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Action>(create);
  static Action? _defaultInstance;

  /// The name of the function or method in the supporting language that has been registered in Ator.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

/// A FixedTimerAction is similar to a regular Action, its main differences are that it is scheduled to run at regular intervals
/// and only takes the actor's state as an argument.
/// Timer Actions are good for executing loops that manipulate the actor's own state.
/// In Elixir or other languages in BEAM it would be similar to invoking Process.send_after(self(), atom, msg, timeout)
class FixedTimerAction extends $pb.GeneratedMessage {
  factory FixedTimerAction({
    $core.int? seconds,
    Action? action,
  }) {
    final $result = create();
    if (seconds != null) {
      $result.seconds = seconds;
    }
    if (action != null) {
      $result.action = action;
    }
    return $result;
  }
  FixedTimerAction._() : super();
  factory FixedTimerAction.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FixedTimerAction.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FixedTimerAction',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol.actors'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'seconds', $pb.PbFieldType.O3)
    ..aOM<Action>(2, _omitFieldNames ? '' : 'action', subBuilder: Action.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FixedTimerAction clone() => FixedTimerAction()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FixedTimerAction copyWith(void Function(FixedTimerAction) updates) =>
      super.copyWith((message) => updates(message as FixedTimerAction))
          as FixedTimerAction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FixedTimerAction create() => FixedTimerAction._();
  FixedTimerAction createEmptyInstance() => create();
  static $pb.PbList<FixedTimerAction> createRepeated() =>
      $pb.PbList<FixedTimerAction>();
  @$core.pragma('dart2js:noInline')
  static FixedTimerAction getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FixedTimerAction>(create);
  static FixedTimerAction? _defaultInstance;

  /// The time to wait until the action is triggered
  @$pb.TagNumber(1)
  $core.int get seconds => $_getIZ(0);
  @$pb.TagNumber(1)
  set seconds($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSeconds() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeconds() => clearField(1);

  /// See Action description Above
  @$pb.TagNumber(2)
  Action get action => $_getN(1);
  @$pb.TagNumber(2)
  set action(Action v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAction() => $_has(1);
  @$pb.TagNumber(2)
  void clearAction() => clearField(2);
  @$pb.TagNumber(2)
  Action ensureAction() => $_ensure(1);
}

class ActorState extends $pb.GeneratedMessage {
  factory ActorState({
    $core.Map<$core.String, $core.String>? tags,
    $0.Any? state,
  }) {
    final $result = create();
    if (tags != null) {
      $result.tags.addAll(tags);
    }
    if (state != null) {
      $result.state = state;
    }
    return $result;
  }
  ActorState._() : super();
  factory ActorState.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ActorState.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ActorState',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol.actors'),
      createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'tags',
        entryClassName: 'ActorState.TagsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('eigr.functions.protocol.actors'))
    ..aOM<$0.Any>(2, _omitFieldNames ? '' : 'state', subBuilder: $0.Any.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ActorState clone() => ActorState()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ActorState copyWith(void Function(ActorState) updates) =>
      super.copyWith((message) => updates(message as ActorState)) as ActorState;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActorState create() => ActorState._();
  ActorState createEmptyInstance() => create();
  static $pb.PbList<ActorState> createRepeated() => $pb.PbList<ActorState>();
  @$core.pragma('dart2js:noInline')
  static ActorState getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ActorState>(create);
  static ActorState? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get tags => $_getMap(0);

  @$pb.TagNumber(2)
  $0.Any get state => $_getN(1);
  @$pb.TagNumber(2)
  set state($0.Any v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);
  @$pb.TagNumber(2)
  $0.Any ensureState() => $_ensure(1);
}

/// TODO doc here
class Metadata extends $pb.GeneratedMessage {
  factory Metadata({
    $core.String? channelGroup,
    $core.Map<$core.String, $core.String>? tags,
  }) {
    final $result = create();
    if (channelGroup != null) {
      $result.channelGroup = channelGroup;
    }
    if (tags != null) {
      $result.tags.addAll(tags);
    }
    return $result;
  }
  Metadata._() : super();
  factory Metadata.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Metadata.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Metadata',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol.actors'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'channelGroup')
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'tags',
        entryClassName: 'Metadata.TagsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('eigr.functions.protocol.actors'))
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Metadata clone() => Metadata()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Metadata copyWith(void Function(Metadata) updates) =>
      super.copyWith((message) => updates(message as Metadata)) as Metadata;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Metadata create() => Metadata._();
  Metadata createEmptyInstance() => create();
  static $pb.PbList<Metadata> createRepeated() => $pb.PbList<Metadata>();
  @$core.pragma('dart2js:noInline')
  static Metadata getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Metadata>(create);
  static Metadata? _defaultInstance;

  /// A channel group represents a way to send actions to various actors
  /// that belong to a certain semantic group.
  @$pb.TagNumber(1)
  $core.String get channelGroup => $_getSZ(0);
  @$pb.TagNumber(1)
  set channelGroup($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasChannelGroup() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannelGroup() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get tags => $_getMap(1);
}

class ActorSettings extends $pb.GeneratedMessage {
  factory ActorSettings({
    Kind? kind,
    $core.bool? stateful,
    ActorSnapshotStrategy? snapshotStrategy,
    ActorDeactivationStrategy? deactivationStrategy,
    $core.int? minPoolSize,
    $core.int? maxPoolSize,
  }) {
    final $result = create();
    if (kind != null) {
      $result.kind = kind;
    }
    if (stateful != null) {
      $result.stateful = stateful;
    }
    if (snapshotStrategy != null) {
      $result.snapshotStrategy = snapshotStrategy;
    }
    if (deactivationStrategy != null) {
      $result.deactivationStrategy = deactivationStrategy;
    }
    if (minPoolSize != null) {
      $result.minPoolSize = minPoolSize;
    }
    if (maxPoolSize != null) {
      $result.maxPoolSize = maxPoolSize;
    }
    return $result;
  }
  ActorSettings._() : super();
  factory ActorSettings.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ActorSettings.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ActorSettings',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol.actors'),
      createEmptyInstance: create)
    ..e<Kind>(1, _omitFieldNames ? '' : 'kind', $pb.PbFieldType.OE,
        defaultOrMaker: Kind.UNKNOW_KIND,
        valueOf: Kind.valueOf,
        enumValues: Kind.values)
    ..aOB(2, _omitFieldNames ? '' : 'stateful')
    ..aOM<ActorSnapshotStrategy>(3, _omitFieldNames ? '' : 'snapshotStrategy',
        subBuilder: ActorSnapshotStrategy.create)
    ..aOM<ActorDeactivationStrategy>(
        4, _omitFieldNames ? '' : 'deactivationStrategy',
        subBuilder: ActorDeactivationStrategy.create)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'minPoolSize', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'maxPoolSize', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ActorSettings clone() => ActorSettings()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ActorSettings copyWith(void Function(ActorSettings) updates) =>
      super.copyWith((message) => updates(message as ActorSettings))
          as ActorSettings;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActorSettings create() => ActorSettings._();
  ActorSettings createEmptyInstance() => create();
  static $pb.PbList<ActorSettings> createRepeated() =>
      $pb.PbList<ActorSettings>();
  @$core.pragma('dart2js:noInline')
  static ActorSettings getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ActorSettings>(create);
  static ActorSettings? _defaultInstance;

  /// Indicates the type of Actor to be configured.
  @$pb.TagNumber(1)
  Kind get kind => $_getN(0);
  @$pb.TagNumber(1)
  set kind(Kind v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasKind() => $_has(0);
  @$pb.TagNumber(1)
  void clearKind() => clearField(1);

  /// Indicates whether an actor's state should be persisted in a definitive store.
  @$pb.TagNumber(2)
  $core.bool get stateful => $_getBF(1);
  @$pb.TagNumber(2)
  set stateful($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStateful() => $_has(1);
  @$pb.TagNumber(2)
  void clearStateful() => clearField(2);

  /// Snapshot strategy
  @$pb.TagNumber(3)
  ActorSnapshotStrategy get snapshotStrategy => $_getN(2);
  @$pb.TagNumber(3)
  set snapshotStrategy(ActorSnapshotStrategy v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSnapshotStrategy() => $_has(2);
  @$pb.TagNumber(3)
  void clearSnapshotStrategy() => clearField(3);
  @$pb.TagNumber(3)
  ActorSnapshotStrategy ensureSnapshotStrategy() => $_ensure(2);

  /// Deactivate strategy
  @$pb.TagNumber(4)
  ActorDeactivationStrategy get deactivationStrategy => $_getN(3);
  @$pb.TagNumber(4)
  set deactivationStrategy(ActorDeactivationStrategy v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDeactivationStrategy() => $_has(3);
  @$pb.TagNumber(4)
  void clearDeactivationStrategy() => clearField(4);
  @$pb.TagNumber(4)
  ActorDeactivationStrategy ensureDeactivationStrategy() => $_ensure(3);

  /// When kind is POOLED this is used to define minimun actor instances
  @$pb.TagNumber(5)
  $core.int get minPoolSize => $_getIZ(4);
  @$pb.TagNumber(5)
  set minPoolSize($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasMinPoolSize() => $_has(4);
  @$pb.TagNumber(5)
  void clearMinPoolSize() => clearField(5);

  /// When kind is POOLED this is used to define maximum actor instances
  @$pb.TagNumber(6)
  $core.int get maxPoolSize => $_getIZ(5);
  @$pb.TagNumber(6)
  set maxPoolSize($core.int v) {
    $_setSignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasMaxPoolSize() => $_has(5);
  @$pb.TagNumber(6)
  void clearMaxPoolSize() => clearField(6);
}

class ActorId extends $pb.GeneratedMessage {
  factory ActorId({
    $core.String? name,
    $core.String? system,
    $core.String? parent,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (system != null) {
      $result.system = system;
    }
    if (parent != null) {
      $result.parent = parent;
    }
    return $result;
  }
  ActorId._() : super();
  factory ActorId.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ActorId.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ActorId',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol.actors'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'system')
    ..aOS(3, _omitFieldNames ? '' : 'parent')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ActorId clone() => ActorId()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ActorId copyWith(void Function(ActorId) updates) =>
      super.copyWith((message) => updates(message as ActorId)) as ActorId;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActorId create() => ActorId._();
  ActorId createEmptyInstance() => create();
  static $pb.PbList<ActorId> createRepeated() => $pb.PbList<ActorId>();
  @$core.pragma('dart2js:noInline')
  static ActorId getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ActorId>(create);
  static ActorId? _defaultInstance;

  /// The name of a Actor Entity.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  /// Name of a ActorSystem
  @$pb.TagNumber(2)
  $core.String get system => $_getSZ(1);
  @$pb.TagNumber(2)
  set system($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSystem() => $_has(1);
  @$pb.TagNumber(2)
  void clearSystem() => clearField(2);

  /// When the Actor is of the Unamed type,
  /// the name of the parent Actor must be informed here.
  @$pb.TagNumber(3)
  $core.String get parent => $_getSZ(2);
  @$pb.TagNumber(3)
  set parent($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasParent() => $_has(2);
  @$pb.TagNumber(3)
  void clearParent() => clearField(3);
}

class Actor extends $pb.GeneratedMessage {
  factory Actor({
    ActorId? id,
    ActorState? state,
    ActorSettings? settings,
    $core.Iterable<Action>? actions,
    $core.Iterable<FixedTimerAction>? timerActions,
    Metadata? metadata,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (state != null) {
      $result.state = state;
    }
    if (settings != null) {
      $result.settings = settings;
    }
    if (actions != null) {
      $result.actions.addAll(actions);
    }
    if (timerActions != null) {
      $result.timerActions.addAll(timerActions);
    }
    if (metadata != null) {
      $result.metadata = metadata;
    }
    return $result;
  }
  Actor._() : super();
  factory Actor.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Actor.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Actor',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol.actors'),
      createEmptyInstance: create)
    ..aOM<ActorId>(1, _omitFieldNames ? '' : 'id', subBuilder: ActorId.create)
    ..aOM<ActorState>(2, _omitFieldNames ? '' : 'state',
        subBuilder: ActorState.create)
    ..aOM<ActorSettings>(3, _omitFieldNames ? '' : 'settings',
        subBuilder: ActorSettings.create)
    ..pc<Action>(4, _omitFieldNames ? '' : 'actions', $pb.PbFieldType.PM,
        subBuilder: Action.create)
    ..pc<FixedTimerAction>(
        5, _omitFieldNames ? '' : 'timerActions', $pb.PbFieldType.PM,
        subBuilder: FixedTimerAction.create)
    ..aOM<Metadata>(6, _omitFieldNames ? '' : 'metadata',
        subBuilder: Metadata.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Actor clone() => Actor()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Actor copyWith(void Function(Actor) updates) =>
      super.copyWith((message) => updates(message as Actor)) as Actor;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Actor create() => Actor._();
  Actor createEmptyInstance() => create();
  static $pb.PbList<Actor> createRepeated() => $pb.PbList<Actor>();
  @$core.pragma('dart2js:noInline')
  static Actor getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Actor>(create);
  static Actor? _defaultInstance;

  /// Actor Identification
  @$pb.TagNumber(1)
  ActorId get id => $_getN(0);
  @$pb.TagNumber(1)
  set id(ActorId v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  ActorId ensureId() => $_ensure(0);

  /// A Actor state.
  @$pb.TagNumber(2)
  ActorState get state => $_getN(1);
  @$pb.TagNumber(2)
  set state(ActorState v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);
  @$pb.TagNumber(2)
  ActorState ensureState() => $_ensure(1);

  /// Actor settings.
  @$pb.TagNumber(3)
  ActorSettings get settings => $_getN(2);
  @$pb.TagNumber(3)
  set settings(ActorSettings v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSettings() => $_has(2);
  @$pb.TagNumber(3)
  void clearSettings() => clearField(3);
  @$pb.TagNumber(3)
  ActorSettings ensureSettings() => $_ensure(2);

  /// The actions registered for an actor
  @$pb.TagNumber(4)
  $core.List<Action> get actions => $_getList(3);

  /// The registered timer actions for an actor.
  @$pb.TagNumber(5)
  $core.List<FixedTimerAction> get timerActions => $_getList(4);

  /// Actor metadata
  @$pb.TagNumber(6)
  Metadata get metadata => $_getN(5);
  @$pb.TagNumber(6)
  set metadata(Metadata v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasMetadata() => $_has(5);
  @$pb.TagNumber(6)
  void clearMetadata() => clearField(6);
  @$pb.TagNumber(6)
  Metadata ensureMetadata() => $_ensure(5);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
