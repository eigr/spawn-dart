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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'package:spawn_dart/src/google/protobuf/any.pb.dart' as $0;
import 'actor.pb.dart' as $1;
import 'protocol.pbenum.dart';

export 'protocol.pbenum.dart';

///  Context is where current and/or updated state is stored
///  to be transmitted to/from proxy and user function
///
///  Params:
///    * state: Actor state passed back and forth between proxy and user function.
///    * metadata: Meta information that comes in invocations
///    * tags: Meta information stored in the actor
///    * caller: ActorId of who is calling target actor
///    * self: ActorId of itself
class Context extends $pb.GeneratedMessage {
  factory Context({
    $0.Any? state,
    $1.ActorId? caller,
    $1.ActorId? self,
    $core.Map<$core.String, $core.String>? metadata,
    $core.Map<$core.String, $core.String>? tags,
  }) {
    final $result = create();
    if (state != null) {
      $result.state = state;
    }
    if (caller != null) {
      $result.caller = caller;
    }
    if (self != null) {
      $result.self = self;
    }
    if (metadata != null) {
      $result.metadata.addAll(metadata);
    }
    if (tags != null) {
      $result.tags.addAll(tags);
    }
    return $result;
  }
  Context._() : super();
  factory Context.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Context.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Context',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol'),
      createEmptyInstance: create)
    ..aOM<$0.Any>(1, _omitFieldNames ? '' : 'state', subBuilder: $0.Any.create)
    ..aOM<$1.ActorId>(2, _omitFieldNames ? '' : 'caller',
        subBuilder: $1.ActorId.create)
    ..aOM<$1.ActorId>(3, _omitFieldNames ? '' : 'self',
        subBuilder: $1.ActorId.create)
    ..m<$core.String, $core.String>(4, _omitFieldNames ? '' : 'metadata',
        entryClassName: 'Context.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('eigr.functions.protocol'))
    ..m<$core.String, $core.String>(5, _omitFieldNames ? '' : 'tags',
        entryClassName: 'Context.TagsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('eigr.functions.protocol'))
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Context clone() => Context()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Context copyWith(void Function(Context) updates) =>
      super.copyWith((message) => updates(message as Context)) as Context;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Context create() => Context._();
  Context createEmptyInstance() => create();
  static $pb.PbList<Context> createRepeated() => $pb.PbList<Context>();
  @$core.pragma('dart2js:noInline')
  static Context getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Context>(create);
  static Context? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Any get state => $_getN(0);
  @$pb.TagNumber(1)
  set state($0.Any v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);
  @$pb.TagNumber(1)
  $0.Any ensureState() => $_ensure(0);

  /// Who is calling target actor
  @$pb.TagNumber(2)
  $1.ActorId get caller => $_getN(1);
  @$pb.TagNumber(2)
  set caller($1.ActorId v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasCaller() => $_has(1);
  @$pb.TagNumber(2)
  void clearCaller() => clearField(2);
  @$pb.TagNumber(2)
  $1.ActorId ensureCaller() => $_ensure(1);

  /// The target actor itself
  @$pb.TagNumber(3)
  $1.ActorId get self => $_getN(2);
  @$pb.TagNumber(3)
  set self($1.ActorId v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSelf() => $_has(2);
  @$pb.TagNumber(3)
  void clearSelf() => clearField(3);
  @$pb.TagNumber(3)
  $1.ActorId ensureSelf() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.Map<$core.String, $core.String> get metadata => $_getMap(3);

  @$pb.TagNumber(5)
  $core.Map<$core.String, $core.String> get tags => $_getMap(4);
}

/// Noop is used when the input or output value of a function or method
/// does not matter to the caller of a Workflow or when the user just wants to receive
/// the Context in the request, that is,
/// he does not care about the input value only with the state.
class Noop extends $pb.GeneratedMessage {
  factory Noop() => create();
  Noop._() : super();
  factory Noop.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Noop.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Noop',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Noop clone() => Noop()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Noop copyWith(void Function(Noop) updates) =>
      super.copyWith((message) => updates(message as Noop)) as Noop;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Noop create() => Noop._();
  Noop createEmptyInstance() => create();
  static $pb.PbList<Noop> createRepeated() => $pb.PbList<Noop>();
  @$core.pragma('dart2js:noInline')
  static Noop getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Noop>(create);
  static Noop? _defaultInstance;
}

/// JSON is an alternative that some SDKs can opt in
/// it will bypass any type validation in spawn actors state / payloads
class JSONType extends $pb.GeneratedMessage {
  factory JSONType({
    $core.String? content,
  }) {
    final $result = create();
    if (content != null) {
      $result.content = content;
    }
    return $result;
  }
  JSONType._() : super();
  factory JSONType.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory JSONType.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'JSONType',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'content')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  JSONType clone() => JSONType()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  JSONType copyWith(void Function(JSONType) updates) =>
      super.copyWith((message) => updates(message as JSONType)) as JSONType;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JSONType create() => JSONType._();
  JSONType createEmptyInstance() => create();
  static $pb.PbList<JSONType> createRepeated() => $pb.PbList<JSONType>();
  @$core.pragma('dart2js:noInline')
  static JSONType getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JSONType>(create);
  static JSONType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get content => $_getSZ(0);
  @$pb.TagNumber(1)
  set content($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasContent() => $_has(0);
  @$pb.TagNumber(1)
  void clearContent() => clearField(1);
}

class RegistrationRequest extends $pb.GeneratedMessage {
  factory RegistrationRequest({
    ServiceInfo? serviceInfo,
    $1.ActorSystem? actorSystem,
  }) {
    final $result = create();
    if (serviceInfo != null) {
      $result.serviceInfo = serviceInfo;
    }
    if (actorSystem != null) {
      $result.actorSystem = actorSystem;
    }
    return $result;
  }
  RegistrationRequest._() : super();
  factory RegistrationRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegistrationRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegistrationRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol'),
      createEmptyInstance: create)
    ..aOM<ServiceInfo>(1, _omitFieldNames ? '' : 'serviceInfo',
        subBuilder: ServiceInfo.create)
    ..aOM<$1.ActorSystem>(2, _omitFieldNames ? '' : 'actorSystem',
        subBuilder: $1.ActorSystem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RegistrationRequest clone() => RegistrationRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RegistrationRequest copyWith(void Function(RegistrationRequest) updates) =>
      super.copyWith((message) => updates(message as RegistrationRequest))
          as RegistrationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegistrationRequest create() => RegistrationRequest._();
  RegistrationRequest createEmptyInstance() => create();
  static $pb.PbList<RegistrationRequest> createRepeated() =>
      $pb.PbList<RegistrationRequest>();
  @$core.pragma('dart2js:noInline')
  static RegistrationRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegistrationRequest>(create);
  static RegistrationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  ServiceInfo get serviceInfo => $_getN(0);
  @$pb.TagNumber(1)
  set serviceInfo(ServiceInfo v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasServiceInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearServiceInfo() => clearField(1);
  @$pb.TagNumber(1)
  ServiceInfo ensureServiceInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.ActorSystem get actorSystem => $_getN(1);
  @$pb.TagNumber(2)
  set actorSystem($1.ActorSystem v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasActorSystem() => $_has(1);
  @$pb.TagNumber(2)
  void clearActorSystem() => clearField(2);
  @$pb.TagNumber(2)
  $1.ActorSystem ensureActorSystem() => $_ensure(1);
}

class RegistrationResponse extends $pb.GeneratedMessage {
  factory RegistrationResponse({
    RequestStatus? status,
    ProxyInfo? proxyInfo,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    if (proxyInfo != null) {
      $result.proxyInfo = proxyInfo;
    }
    return $result;
  }
  RegistrationResponse._() : super();
  factory RegistrationResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegistrationResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegistrationResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol'),
      createEmptyInstance: create)
    ..aOM<RequestStatus>(1, _omitFieldNames ? '' : 'status',
        subBuilder: RequestStatus.create)
    ..aOM<ProxyInfo>(2, _omitFieldNames ? '' : 'proxyInfo',
        subBuilder: ProxyInfo.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RegistrationResponse clone() =>
      RegistrationResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RegistrationResponse copyWith(void Function(RegistrationResponse) updates) =>
      super.copyWith((message) => updates(message as RegistrationResponse))
          as RegistrationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegistrationResponse create() => RegistrationResponse._();
  RegistrationResponse createEmptyInstance() => create();
  static $pb.PbList<RegistrationResponse> createRepeated() =>
      $pb.PbList<RegistrationResponse>();
  @$core.pragma('dart2js:noInline')
  static RegistrationResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegistrationResponse>(create);
  static RegistrationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  RequestStatus get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(RequestStatus v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
  @$pb.TagNumber(1)
  RequestStatus ensureStatus() => $_ensure(0);

  @$pb.TagNumber(2)
  ProxyInfo get proxyInfo => $_getN(1);
  @$pb.TagNumber(2)
  set proxyInfo(ProxyInfo v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasProxyInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearProxyInfo() => clearField(2);
  @$pb.TagNumber(2)
  ProxyInfo ensureProxyInfo() => $_ensure(1);
}

class ServiceInfo extends $pb.GeneratedMessage {
  factory ServiceInfo({
    $core.String? serviceName,
    $core.String? serviceVersion,
    $core.String? serviceRuntime,
    $core.String? supportLibraryName,
    $core.String? supportLibraryVersion,
    $core.int? protocolMajorVersion,
    $core.int? protocolMinorVersion,
  }) {
    final $result = create();
    if (serviceName != null) {
      $result.serviceName = serviceName;
    }
    if (serviceVersion != null) {
      $result.serviceVersion = serviceVersion;
    }
    if (serviceRuntime != null) {
      $result.serviceRuntime = serviceRuntime;
    }
    if (supportLibraryName != null) {
      $result.supportLibraryName = supportLibraryName;
    }
    if (supportLibraryVersion != null) {
      $result.supportLibraryVersion = supportLibraryVersion;
    }
    if (protocolMajorVersion != null) {
      $result.protocolMajorVersion = protocolMajorVersion;
    }
    if (protocolMinorVersion != null) {
      $result.protocolMinorVersion = protocolMinorVersion;
    }
    return $result;
  }
  ServiceInfo._() : super();
  factory ServiceInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ServiceInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ServiceInfo',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'serviceName')
    ..aOS(2, _omitFieldNames ? '' : 'serviceVersion')
    ..aOS(3, _omitFieldNames ? '' : 'serviceRuntime')
    ..aOS(4, _omitFieldNames ? '' : 'supportLibraryName')
    ..aOS(5, _omitFieldNames ? '' : 'supportLibraryVersion')
    ..a<$core.int>(
        6, _omitFieldNames ? '' : 'protocolMajorVersion', $pb.PbFieldType.O3)
    ..a<$core.int>(
        7, _omitFieldNames ? '' : 'protocolMinorVersion', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ServiceInfo clone() => ServiceInfo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ServiceInfo copyWith(void Function(ServiceInfo) updates) =>
      super.copyWith((message) => updates(message as ServiceInfo))
          as ServiceInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServiceInfo create() => ServiceInfo._();
  ServiceInfo createEmptyInstance() => create();
  static $pb.PbList<ServiceInfo> createRepeated() => $pb.PbList<ServiceInfo>();
  @$core.pragma('dart2js:noInline')
  static ServiceInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ServiceInfo>(create);
  static ServiceInfo? _defaultInstance;

  /// The name of the actor system, eg, "my-actor-system".
  @$pb.TagNumber(1)
  $core.String get serviceName => $_getSZ(0);
  @$pb.TagNumber(1)
  set serviceName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasServiceName() => $_has(0);
  @$pb.TagNumber(1)
  void clearServiceName() => clearField(1);

  /// The version of the service.
  @$pb.TagNumber(2)
  $core.String get serviceVersion => $_getSZ(1);
  @$pb.TagNumber(2)
  set serviceVersion($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasServiceVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearServiceVersion() => clearField(2);

  /// A description of the runtime for the service. Can be anything, but examples might be:
  /// - node v10.15.2
  /// - OpenJDK Runtime Environment 1.8.0_192-b12
  @$pb.TagNumber(3)
  $core.String get serviceRuntime => $_getSZ(2);
  @$pb.TagNumber(3)
  set serviceRuntime($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasServiceRuntime() => $_has(2);
  @$pb.TagNumber(3)
  void clearServiceRuntime() => clearField(3);

  /// If using a support library, the name of that library, eg "spawn-jvm"
  @$pb.TagNumber(4)
  $core.String get supportLibraryName => $_getSZ(3);
  @$pb.TagNumber(4)
  set supportLibraryName($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSupportLibraryName() => $_has(3);
  @$pb.TagNumber(4)
  void clearSupportLibraryName() => clearField(4);

  /// The version of the support library being used.
  @$pb.TagNumber(5)
  $core.String get supportLibraryVersion => $_getSZ(4);
  @$pb.TagNumber(5)
  set supportLibraryVersion($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasSupportLibraryVersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearSupportLibraryVersion() => clearField(5);

  /// Spawn protocol major version accepted by the support library.
  @$pb.TagNumber(6)
  $core.int get protocolMajorVersion => $_getIZ(5);
  @$pb.TagNumber(6)
  set protocolMajorVersion($core.int v) {
    $_setSignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasProtocolMajorVersion() => $_has(5);
  @$pb.TagNumber(6)
  void clearProtocolMajorVersion() => clearField(6);

  /// Spawn protocol minor version accepted by the support library.
  @$pb.TagNumber(7)
  $core.int get protocolMinorVersion => $_getIZ(6);
  @$pb.TagNumber(7)
  set protocolMinorVersion($core.int v) {
    $_setSignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasProtocolMinorVersion() => $_has(6);
  @$pb.TagNumber(7)
  void clearProtocolMinorVersion() => clearField(7);
}

class SpawnRequest extends $pb.GeneratedMessage {
  factory SpawnRequest({
    $core.Iterable<$1.ActorId>? actors,
  }) {
    final $result = create();
    if (actors != null) {
      $result.actors.addAll(actors);
    }
    return $result;
  }
  SpawnRequest._() : super();
  factory SpawnRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SpawnRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SpawnRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol'),
      createEmptyInstance: create)
    ..pc<$1.ActorId>(1, _omitFieldNames ? '' : 'actors', $pb.PbFieldType.PM,
        subBuilder: $1.ActorId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SpawnRequest clone() => SpawnRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SpawnRequest copyWith(void Function(SpawnRequest) updates) =>
      super.copyWith((message) => updates(message as SpawnRequest))
          as SpawnRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpawnRequest create() => SpawnRequest._();
  SpawnRequest createEmptyInstance() => create();
  static $pb.PbList<SpawnRequest> createRepeated() =>
      $pb.PbList<SpawnRequest>();
  @$core.pragma('dart2js:noInline')
  static SpawnRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SpawnRequest>(create);
  static SpawnRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.ActorId> get actors => $_getList(0);
}

class SpawnResponse extends $pb.GeneratedMessage {
  factory SpawnResponse({
    RequestStatus? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  SpawnResponse._() : super();
  factory SpawnResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SpawnResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SpawnResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol'),
      createEmptyInstance: create)
    ..aOM<RequestStatus>(1, _omitFieldNames ? '' : 'status',
        subBuilder: RequestStatus.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SpawnResponse clone() => SpawnResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SpawnResponse copyWith(void Function(SpawnResponse) updates) =>
      super.copyWith((message) => updates(message as SpawnResponse))
          as SpawnResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpawnResponse create() => SpawnResponse._();
  SpawnResponse createEmptyInstance() => create();
  static $pb.PbList<SpawnResponse> createRepeated() =>
      $pb.PbList<SpawnResponse>();
  @$core.pragma('dart2js:noInline')
  static SpawnResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SpawnResponse>(create);
  static SpawnResponse? _defaultInstance;

  @$pb.TagNumber(1)
  RequestStatus get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(RequestStatus v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
  @$pb.TagNumber(1)
  RequestStatus ensureStatus() => $_ensure(0);
}

class ProxyInfo extends $pb.GeneratedMessage {
  factory ProxyInfo({
    $core.int? protocolMajorVersion,
    $core.int? protocolMinorVersion,
    $core.String? proxyName,
    $core.String? proxyVersion,
  }) {
    final $result = create();
    if (protocolMajorVersion != null) {
      $result.protocolMajorVersion = protocolMajorVersion;
    }
    if (protocolMinorVersion != null) {
      $result.protocolMinorVersion = protocolMinorVersion;
    }
    if (proxyName != null) {
      $result.proxyName = proxyName;
    }
    if (proxyVersion != null) {
      $result.proxyVersion = proxyVersion;
    }
    return $result;
  }
  ProxyInfo._() : super();
  factory ProxyInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ProxyInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProxyInfo',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'protocolMajorVersion', $pb.PbFieldType.O3)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'protocolMinorVersion', $pb.PbFieldType.O3)
    ..aOS(3, _omitFieldNames ? '' : 'proxyName')
    ..aOS(4, _omitFieldNames ? '' : 'proxyVersion')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ProxyInfo clone() => ProxyInfo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ProxyInfo copyWith(void Function(ProxyInfo) updates) =>
      super.copyWith((message) => updates(message as ProxyInfo)) as ProxyInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProxyInfo create() => ProxyInfo._();
  ProxyInfo createEmptyInstance() => create();
  static $pb.PbList<ProxyInfo> createRepeated() => $pb.PbList<ProxyInfo>();
  @$core.pragma('dart2js:noInline')
  static ProxyInfo getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProxyInfo>(create);
  static ProxyInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get protocolMajorVersion => $_getIZ(0);
  @$pb.TagNumber(1)
  set protocolMajorVersion($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasProtocolMajorVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearProtocolMajorVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get protocolMinorVersion => $_getIZ(1);
  @$pb.TagNumber(2)
  set protocolMinorVersion($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasProtocolMinorVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearProtocolMinorVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get proxyName => $_getSZ(2);
  @$pb.TagNumber(3)
  set proxyName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasProxyName() => $_has(2);
  @$pb.TagNumber(3)
  void clearProxyName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get proxyVersion => $_getSZ(3);
  @$pb.TagNumber(4)
  set proxyVersion($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasProxyVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearProxyVersion() => clearField(4);
}

/// When a Host Function is invoked it returns the updated state and return value to the call.
/// It can also return a number of side effects to other Actors as a result of its computation.
/// These side effects will be forwarded to the respective Actors asynchronously and should not affect the Host Function's response to its caller.
/// Internally side effects is just a special kind of InvocationRequest.
/// Useful for handle handle `recipient list` and `Composed Message Processor` patterns:
/// https://www.enterpriseintegrationpatterns.com/patterns/messaging/RecipientList.html
/// https://www.enterpriseintegrationpatterns.com/patterns/messaging/DistributionAggregate.html
class SideEffect extends $pb.GeneratedMessage {
  factory SideEffect({
    InvocationRequest? request,
  }) {
    final $result = create();
    if (request != null) {
      $result.request = request;
    }
    return $result;
  }
  SideEffect._() : super();
  factory SideEffect.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SideEffect.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SideEffect',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol'),
      createEmptyInstance: create)
    ..aOM<InvocationRequest>(1, _omitFieldNames ? '' : 'request',
        subBuilder: InvocationRequest.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SideEffect clone() => SideEffect()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SideEffect copyWith(void Function(SideEffect) updates) =>
      super.copyWith((message) => updates(message as SideEffect)) as SideEffect;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SideEffect create() => SideEffect._();
  SideEffect createEmptyInstance() => create();
  static $pb.PbList<SideEffect> createRepeated() => $pb.PbList<SideEffect>();
  @$core.pragma('dart2js:noInline')
  static SideEffect getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SideEffect>(create);
  static SideEffect? _defaultInstance;

  @$pb.TagNumber(1)
  InvocationRequest get request => $_getN(0);
  @$pb.TagNumber(1)
  set request(InvocationRequest v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => clearField(1);
  @$pb.TagNumber(1)
  InvocationRequest ensureRequest() => $_ensure(0);
}

enum Broadcast_Payload { value, noop, notSet }

/// Broadcast a message to many Actors
/// Useful for handle `recipient list`, `publish-subscribe channel`, and `scatter-gatther` patterns:
/// https://www.enterpriseintegrationpatterns.com/patterns/messaging/RecipientList.html
/// https://www.enterpriseintegrationpatterns.com/patterns/messaging/PublishSubscribeChannel.html
/// https://www.enterpriseintegrationpatterns.com/patterns/messaging/BroadcastAggregate.html
class Broadcast extends $pb.GeneratedMessage {
  factory Broadcast({
    $core.String? channelGroup,
    $core.String? actionName,
    $0.Any? value,
    Noop? noop,
  }) {
    final $result = create();
    if (channelGroup != null) {
      $result.channelGroup = channelGroup;
    }
    if (actionName != null) {
      $result.actionName = actionName;
    }
    if (value != null) {
      $result.value = value;
    }
    if (noop != null) {
      $result.noop = noop;
    }
    return $result;
  }
  Broadcast._() : super();
  factory Broadcast.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Broadcast.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Broadcast_Payload> _Broadcast_PayloadByTag =
      {
    3: Broadcast_Payload.value,
    4: Broadcast_Payload.noop,
    0: Broadcast_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Broadcast',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol'),
      createEmptyInstance: create)
    ..oo(0, [3, 4])
    ..aOS(1, _omitFieldNames ? '' : 'channelGroup')
    ..aOS(2, _omitFieldNames ? '' : 'actionName')
    ..aOM<$0.Any>(3, _omitFieldNames ? '' : 'value', subBuilder: $0.Any.create)
    ..aOM<Noop>(4, _omitFieldNames ? '' : 'noop', subBuilder: Noop.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Broadcast clone() => Broadcast()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Broadcast copyWith(void Function(Broadcast) updates) =>
      super.copyWith((message) => updates(message as Broadcast)) as Broadcast;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Broadcast create() => Broadcast._();
  Broadcast createEmptyInstance() => create();
  static $pb.PbList<Broadcast> createRepeated() => $pb.PbList<Broadcast>();
  @$core.pragma('dart2js:noInline')
  static Broadcast getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Broadcast>(create);
  static Broadcast? _defaultInstance;

  Broadcast_Payload whichPayload() => _Broadcast_PayloadByTag[$_whichOneof(0)]!;
  void clearPayload() => clearField($_whichOneof(0));

  /// Channel of target Actors
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

  /// Action. Only Actors that have this action will run successfully
  @$pb.TagNumber(2)
  $core.String get actionName => $_getSZ(1);
  @$pb.TagNumber(2)
  set actionName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasActionName() => $_has(1);
  @$pb.TagNumber(2)
  void clearActionName() => clearField(2);

  @$pb.TagNumber(3)
  $0.Any get value => $_getN(2);
  @$pb.TagNumber(3)
  set value($0.Any v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);
  @$pb.TagNumber(3)
  $0.Any ensureValue() => $_ensure(2);

  @$pb.TagNumber(4)
  Noop get noop => $_getN(3);
  @$pb.TagNumber(4)
  set noop(Noop v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasNoop() => $_has(3);
  @$pb.TagNumber(4)
  void clearNoop() => clearField(4);
  @$pb.TagNumber(4)
  Noop ensureNoop() => $_ensure(3);
}

/// Sends the output of a action of an Actor to the input of another action of an Actor
/// Useful for handle `pipes` pattern:
/// https://www.enterpriseintegrationpatterns.com/patterns/messaging/PipesAndFilters.html
class Pipe extends $pb.GeneratedMessage {
  factory Pipe({
    $core.String? actor,
    $core.String? actionName,
  }) {
    final $result = create();
    if (actor != null) {
      $result.actor = actor;
    }
    if (actionName != null) {
      $result.actionName = actionName;
    }
    return $result;
  }
  Pipe._() : super();
  factory Pipe.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Pipe.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Pipe',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'actor')
    ..aOS(2, _omitFieldNames ? '' : 'actionName')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Pipe clone() => Pipe()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Pipe copyWith(void Function(Pipe) updates) =>
      super.copyWith((message) => updates(message as Pipe)) as Pipe;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Pipe create() => Pipe._();
  Pipe createEmptyInstance() => create();
  static $pb.PbList<Pipe> createRepeated() => $pb.PbList<Pipe>();
  @$core.pragma('dart2js:noInline')
  static Pipe getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pipe>(create);
  static Pipe? _defaultInstance;

  /// Target Actor
  @$pb.TagNumber(1)
  $core.String get actor => $_getSZ(0);
  @$pb.TagNumber(1)
  set actor($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasActor() => $_has(0);
  @$pb.TagNumber(1)
  void clearActor() => clearField(1);

  /// Action.
  @$pb.TagNumber(2)
  $core.String get actionName => $_getSZ(1);
  @$pb.TagNumber(2)
  set actionName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasActionName() => $_has(1);
  @$pb.TagNumber(2)
  void clearActionName() => clearField(2);
}

/// Sends the input of a action of an Actor to the input of another action of an Actor
/// Useful for handle `content-basead router` pattern
/// https://www.enterpriseintegrationpatterns.com/patterns/messaging/ContentBasedRouter.html
class Forward extends $pb.GeneratedMessage {
  factory Forward({
    $core.String? actor,
    $core.String? actionName,
  }) {
    final $result = create();
    if (actor != null) {
      $result.actor = actor;
    }
    if (actionName != null) {
      $result.actionName = actionName;
    }
    return $result;
  }
  Forward._() : super();
  factory Forward.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Forward.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Forward',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'actor')
    ..aOS(2, _omitFieldNames ? '' : 'actionName')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Forward clone() => Forward()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Forward copyWith(void Function(Forward) updates) =>
      super.copyWith((message) => updates(message as Forward)) as Forward;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Forward create() => Forward._();
  Forward createEmptyInstance() => create();
  static $pb.PbList<Forward> createRepeated() => $pb.PbList<Forward>();
  @$core.pragma('dart2js:noInline')
  static Forward getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Forward>(create);
  static Forward? _defaultInstance;

  /// Target Actor
  @$pb.TagNumber(1)
  $core.String get actor => $_getSZ(0);
  @$pb.TagNumber(1)
  set actor($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasActor() => $_has(0);
  @$pb.TagNumber(1)
  void clearActor() => clearField(1);

  /// Action.
  @$pb.TagNumber(2)
  $core.String get actionName => $_getSZ(1);
  @$pb.TagNumber(2)
  set actionName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasActionName() => $_has(1);
  @$pb.TagNumber(2)
  void clearActionName() => clearField(2);
}

enum Workflow_Routing { pipe, forward, notSet }

/// Container for archicetural message patterns
class Workflow extends $pb.GeneratedMessage {
  factory Workflow({
    $core.Iterable<SideEffect>? effects,
    Broadcast? broadcast,
    Pipe? pipe,
    Forward? forward,
  }) {
    final $result = create();
    if (effects != null) {
      $result.effects.addAll(effects);
    }
    if (broadcast != null) {
      $result.broadcast = broadcast;
    }
    if (pipe != null) {
      $result.pipe = pipe;
    }
    if (forward != null) {
      $result.forward = forward;
    }
    return $result;
  }
  Workflow._() : super();
  factory Workflow.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Workflow.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Workflow_Routing> _Workflow_RoutingByTag = {
    3: Workflow_Routing.pipe,
    4: Workflow_Routing.forward,
    0: Workflow_Routing.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Workflow',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol'),
      createEmptyInstance: create)
    ..oo(0, [3, 4])
    ..pc<SideEffect>(1, _omitFieldNames ? '' : 'effects', $pb.PbFieldType.PM,
        subBuilder: SideEffect.create)
    ..aOM<Broadcast>(2, _omitFieldNames ? '' : 'broadcast',
        subBuilder: Broadcast.create)
    ..aOM<Pipe>(3, _omitFieldNames ? '' : 'pipe', subBuilder: Pipe.create)
    ..aOM<Forward>(4, _omitFieldNames ? '' : 'forward',
        subBuilder: Forward.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Workflow clone() => Workflow()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Workflow copyWith(void Function(Workflow) updates) =>
      super.copyWith((message) => updates(message as Workflow)) as Workflow;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Workflow create() => Workflow._();
  Workflow createEmptyInstance() => create();
  static $pb.PbList<Workflow> createRepeated() => $pb.PbList<Workflow>();
  @$core.pragma('dart2js:noInline')
  static Workflow getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Workflow>(create);
  static Workflow? _defaultInstance;

  Workflow_Routing whichRouting() => _Workflow_RoutingByTag[$_whichOneof(0)]!;
  void clearRouting() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.List<SideEffect> get effects => $_getList(0);

  @$pb.TagNumber(2)
  Broadcast get broadcast => $_getN(1);
  @$pb.TagNumber(2)
  set broadcast(Broadcast v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasBroadcast() => $_has(1);
  @$pb.TagNumber(2)
  void clearBroadcast() => clearField(2);
  @$pb.TagNumber(2)
  Broadcast ensureBroadcast() => $_ensure(1);

  @$pb.TagNumber(3)
  Pipe get pipe => $_getN(2);
  @$pb.TagNumber(3)
  set pipe(Pipe v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPipe() => $_has(2);
  @$pb.TagNumber(3)
  void clearPipe() => clearField(3);
  @$pb.TagNumber(3)
  Pipe ensurePipe() => $_ensure(2);

  @$pb.TagNumber(4)
  Forward get forward => $_getN(3);
  @$pb.TagNumber(4)
  set forward(Forward v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasForward() => $_has(3);
  @$pb.TagNumber(4)
  void clearForward() => clearField(4);
  @$pb.TagNumber(4)
  Forward ensureForward() => $_ensure(3);
}

enum InvocationRequest_Payload { value, noop, notSet }

///  The user function when it wants to send a message to an Actor uses the InvocationRequest message type.
///
///  Params:
///    * system: See ActorSystem message.
///    * actor: The target Actor, i.e. the one that the user function is calling to perform some computation.
///    * caller: The caller Actor
///    * action_name: The function or method on the target Actor that will receive this request
///      and perform some useful computation with the sent data.
///    * value: This is the value sent by the user function to be computed by the request's target Actor action.
///    * async: Indicates whether the action should be processed synchronously, where a response should be sent back to the user function,
///             or whether the action should be processed asynchronously, i.e. no response sent to the caller and no waiting.
///    * metadata: Meta information or headers
class InvocationRequest extends $pb.GeneratedMessage {
  factory InvocationRequest({
    $1.ActorSystem? system,
    $1.Actor? actor,
    $core.String? actionName,
    $0.Any? value,
    $core.bool? async,
    $1.ActorId? caller,
    Noop? noop,
    $core.Map<$core.String, $core.String>? metadata,
    $fixnum.Int64? scheduledTo,
    $core.bool? pooled,
  }) {
    final $result = create();
    if (system != null) {
      $result.system = system;
    }
    if (actor != null) {
      $result.actor = actor;
    }
    if (actionName != null) {
      $result.actionName = actionName;
    }
    if (value != null) {
      $result.value = value;
    }
    if (async != null) {
      $result.async = async;
    }
    if (caller != null) {
      $result.caller = caller;
    }
    if (noop != null) {
      $result.noop = noop;
    }
    if (metadata != null) {
      $result.metadata.addAll(metadata);
    }
    if (scheduledTo != null) {
      $result.scheduledTo = scheduledTo;
    }
    if (pooled != null) {
      $result.pooled = pooled;
    }
    return $result;
  }
  InvocationRequest._() : super();
  factory InvocationRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InvocationRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, InvocationRequest_Payload>
      _InvocationRequest_PayloadByTag = {
    4: InvocationRequest_Payload.value,
    7: InvocationRequest_Payload.noop,
    0: InvocationRequest_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'InvocationRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol'),
      createEmptyInstance: create)
    ..oo(0, [4, 7])
    ..aOM<$1.ActorSystem>(1, _omitFieldNames ? '' : 'system',
        subBuilder: $1.ActorSystem.create)
    ..aOM<$1.Actor>(2, _omitFieldNames ? '' : 'actor',
        subBuilder: $1.Actor.create)
    ..aOS(3, _omitFieldNames ? '' : 'actionName')
    ..aOM<$0.Any>(4, _omitFieldNames ? '' : 'value', subBuilder: $0.Any.create)
    ..aOB(5, _omitFieldNames ? '' : 'async')
    ..aOM<$1.ActorId>(6, _omitFieldNames ? '' : 'caller',
        subBuilder: $1.ActorId.create)
    ..aOM<Noop>(7, _omitFieldNames ? '' : 'noop', subBuilder: Noop.create)
    ..m<$core.String, $core.String>(8, _omitFieldNames ? '' : 'metadata',
        entryClassName: 'InvocationRequest.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('eigr.functions.protocol'))
    ..aInt64(9, _omitFieldNames ? '' : 'scheduledTo')
    ..aOB(10, _omitFieldNames ? '' : 'pooled')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InvocationRequest clone() => InvocationRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InvocationRequest copyWith(void Function(InvocationRequest) updates) =>
      super.copyWith((message) => updates(message as InvocationRequest))
          as InvocationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InvocationRequest create() => InvocationRequest._();
  InvocationRequest createEmptyInstance() => create();
  static $pb.PbList<InvocationRequest> createRepeated() =>
      $pb.PbList<InvocationRequest>();
  @$core.pragma('dart2js:noInline')
  static InvocationRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InvocationRequest>(create);
  static InvocationRequest? _defaultInstance;

  InvocationRequest_Payload whichPayload() =>
      _InvocationRequest_PayloadByTag[$_whichOneof(0)]!;
  void clearPayload() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $1.ActorSystem get system => $_getN(0);
  @$pb.TagNumber(1)
  set system($1.ActorSystem v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSystem() => $_has(0);
  @$pb.TagNumber(1)
  void clearSystem() => clearField(1);
  @$pb.TagNumber(1)
  $1.ActorSystem ensureSystem() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.Actor get actor => $_getN(1);
  @$pb.TagNumber(2)
  set actor($1.Actor v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasActor() => $_has(1);
  @$pb.TagNumber(2)
  void clearActor() => clearField(2);
  @$pb.TagNumber(2)
  $1.Actor ensureActor() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get actionName => $_getSZ(2);
  @$pb.TagNumber(3)
  set actionName($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasActionName() => $_has(2);
  @$pb.TagNumber(3)
  void clearActionName() => clearField(3);

  @$pb.TagNumber(4)
  $0.Any get value => $_getN(3);
  @$pb.TagNumber(4)
  set value($0.Any v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearValue() => clearField(4);
  @$pb.TagNumber(4)
  $0.Any ensureValue() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.bool get async => $_getBF(4);
  @$pb.TagNumber(5)
  set async($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasAsync() => $_has(4);
  @$pb.TagNumber(5)
  void clearAsync() => clearField(5);

  @$pb.TagNumber(6)
  $1.ActorId get caller => $_getN(5);
  @$pb.TagNumber(6)
  set caller($1.ActorId v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasCaller() => $_has(5);
  @$pb.TagNumber(6)
  void clearCaller() => clearField(6);
  @$pb.TagNumber(6)
  $1.ActorId ensureCaller() => $_ensure(5);

  @$pb.TagNumber(7)
  Noop get noop => $_getN(6);
  @$pb.TagNumber(7)
  set noop(Noop v) {
    setField(7, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasNoop() => $_has(6);
  @$pb.TagNumber(7)
  void clearNoop() => clearField(7);
  @$pb.TagNumber(7)
  Noop ensureNoop() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.Map<$core.String, $core.String> get metadata => $_getMap(7);

  @$pb.TagNumber(9)
  $fixnum.Int64 get scheduledTo => $_getI64(8);
  @$pb.TagNumber(9)
  set scheduledTo($fixnum.Int64 v) {
    $_setInt64(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasScheduledTo() => $_has(8);
  @$pb.TagNumber(9)
  void clearScheduledTo() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get pooled => $_getBF(9);
  @$pb.TagNumber(10)
  set pooled($core.bool v) {
    $_setBool(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasPooled() => $_has(9);
  @$pb.TagNumber(10)
  void clearPooled() => clearField(10);
}

enum ActorInvocation_Payload { value, noop, notSet }

///  ActorInvocation is a translation message between a local invocation made via InvocationRequest
///  and the real Actor that intends to respond to this invocation and that can be located anywhere in the cluster.
///
///  Params:
///    * actor: The ActorId handling the InvocationRequest request, also called the target Actor.
///    * action_name: The function or method on the target Actor that will receive this request
///                  and perform some useful computation with the sent data.
///    * current_context: The current Context with current state value of the target Actor.
///                     That is, the same as found via matching in %Actor{name: target_actor, state: %ActorState{state: value} = actor_state}.
///                     In this case, the Context type will contain in the value attribute the same `value` as the matching above.
///    * payload: The value to be passed to the function or method corresponding to action_name.
class ActorInvocation extends $pb.GeneratedMessage {
  factory ActorInvocation({
    $1.ActorId? actor,
    $core.String? actionName,
    Context? currentContext,
    $0.Any? value,
    Noop? noop,
    $1.ActorId? caller,
  }) {
    final $result = create();
    if (actor != null) {
      $result.actor = actor;
    }
    if (actionName != null) {
      $result.actionName = actionName;
    }
    if (currentContext != null) {
      $result.currentContext = currentContext;
    }
    if (value != null) {
      $result.value = value;
    }
    if (noop != null) {
      $result.noop = noop;
    }
    if (caller != null) {
      $result.caller = caller;
    }
    return $result;
  }
  ActorInvocation._() : super();
  factory ActorInvocation.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ActorInvocation.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ActorInvocation_Payload>
      _ActorInvocation_PayloadByTag = {
    4: ActorInvocation_Payload.value,
    5: ActorInvocation_Payload.noop,
    0: ActorInvocation_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ActorInvocation',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol'),
      createEmptyInstance: create)
    ..oo(0, [4, 5])
    ..aOM<$1.ActorId>(1, _omitFieldNames ? '' : 'actor',
        subBuilder: $1.ActorId.create)
    ..aOS(2, _omitFieldNames ? '' : 'actionName')
    ..aOM<Context>(3, _omitFieldNames ? '' : 'currentContext',
        subBuilder: Context.create)
    ..aOM<$0.Any>(4, _omitFieldNames ? '' : 'value', subBuilder: $0.Any.create)
    ..aOM<Noop>(5, _omitFieldNames ? '' : 'noop', subBuilder: Noop.create)
    ..aOM<$1.ActorId>(6, _omitFieldNames ? '' : 'caller',
        subBuilder: $1.ActorId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ActorInvocation clone() => ActorInvocation()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ActorInvocation copyWith(void Function(ActorInvocation) updates) =>
      super.copyWith((message) => updates(message as ActorInvocation))
          as ActorInvocation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActorInvocation create() => ActorInvocation._();
  ActorInvocation createEmptyInstance() => create();
  static $pb.PbList<ActorInvocation> createRepeated() =>
      $pb.PbList<ActorInvocation>();
  @$core.pragma('dart2js:noInline')
  static ActorInvocation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ActorInvocation>(create);
  static ActorInvocation? _defaultInstance;

  ActorInvocation_Payload whichPayload() =>
      _ActorInvocation_PayloadByTag[$_whichOneof(0)]!;
  void clearPayload() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $1.ActorId get actor => $_getN(0);
  @$pb.TagNumber(1)
  set actor($1.ActorId v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasActor() => $_has(0);
  @$pb.TagNumber(1)
  void clearActor() => clearField(1);
  @$pb.TagNumber(1)
  $1.ActorId ensureActor() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get actionName => $_getSZ(1);
  @$pb.TagNumber(2)
  set actionName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasActionName() => $_has(1);
  @$pb.TagNumber(2)
  void clearActionName() => clearField(2);

  @$pb.TagNumber(3)
  Context get currentContext => $_getN(2);
  @$pb.TagNumber(3)
  set currentContext(Context v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCurrentContext() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrentContext() => clearField(3);
  @$pb.TagNumber(3)
  Context ensureCurrentContext() => $_ensure(2);

  @$pb.TagNumber(4)
  $0.Any get value => $_getN(3);
  @$pb.TagNumber(4)
  set value($0.Any v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearValue() => clearField(4);
  @$pb.TagNumber(4)
  $0.Any ensureValue() => $_ensure(3);

  @$pb.TagNumber(5)
  Noop get noop => $_getN(4);
  @$pb.TagNumber(5)
  set noop(Noop v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasNoop() => $_has(4);
  @$pb.TagNumber(5)
  void clearNoop() => clearField(5);
  @$pb.TagNumber(5)
  Noop ensureNoop() => $_ensure(4);

  @$pb.TagNumber(6)
  $1.ActorId get caller => $_getN(5);
  @$pb.TagNumber(6)
  set caller($1.ActorId v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasCaller() => $_has(5);
  @$pb.TagNumber(6)
  void clearCaller() => clearField(6);
  @$pb.TagNumber(6)
  $1.ActorId ensureCaller() => $_ensure(5);
}

enum ActorInvocationResponse_Payload { value, noop, notSet }

///  The user function's response after executing the action originated by the local proxy request via ActorInvocation.
///
///  Params:
///    actor_name: The name of the Actor handling the InvocationRequest request, also called the target Actor.
///    actor_system: The name of ActorSystem registered in Registration step.
///    updated_context: The Context with updated state value of the target Actor after user function has processed a request.
///    value: The value that the original request proxy will forward in response to the InvocationRequest type request.
///           This is the final response from the point of view of the user who invoked the Actor call and its subsequent processing.
class ActorInvocationResponse extends $pb.GeneratedMessage {
  factory ActorInvocationResponse({
    $core.String? actorName,
    $core.String? actorSystem,
    Context? updatedContext,
    $0.Any? value,
    Workflow? workflow,
    Noop? noop,
    $core.bool? checkpoint,
  }) {
    final $result = create();
    if (actorName != null) {
      $result.actorName = actorName;
    }
    if (actorSystem != null) {
      $result.actorSystem = actorSystem;
    }
    if (updatedContext != null) {
      $result.updatedContext = updatedContext;
    }
    if (value != null) {
      $result.value = value;
    }
    if (workflow != null) {
      $result.workflow = workflow;
    }
    if (noop != null) {
      $result.noop = noop;
    }
    if (checkpoint != null) {
      $result.checkpoint = checkpoint;
    }
    return $result;
  }
  ActorInvocationResponse._() : super();
  factory ActorInvocationResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ActorInvocationResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ActorInvocationResponse_Payload>
      _ActorInvocationResponse_PayloadByTag = {
    4: ActorInvocationResponse_Payload.value,
    6: ActorInvocationResponse_Payload.noop,
    0: ActorInvocationResponse_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ActorInvocationResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol'),
      createEmptyInstance: create)
    ..oo(0, [4, 6])
    ..aOS(1, _omitFieldNames ? '' : 'actorName')
    ..aOS(2, _omitFieldNames ? '' : 'actorSystem')
    ..aOM<Context>(3, _omitFieldNames ? '' : 'updatedContext',
        subBuilder: Context.create)
    ..aOM<$0.Any>(4, _omitFieldNames ? '' : 'value', subBuilder: $0.Any.create)
    ..aOM<Workflow>(5, _omitFieldNames ? '' : 'workflow',
        subBuilder: Workflow.create)
    ..aOM<Noop>(6, _omitFieldNames ? '' : 'noop', subBuilder: Noop.create)
    ..aOB(7, _omitFieldNames ? '' : 'checkpoint')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ActorInvocationResponse clone() =>
      ActorInvocationResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ActorInvocationResponse copyWith(
          void Function(ActorInvocationResponse) updates) =>
      super.copyWith((message) => updates(message as ActorInvocationResponse))
          as ActorInvocationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActorInvocationResponse create() => ActorInvocationResponse._();
  ActorInvocationResponse createEmptyInstance() => create();
  static $pb.PbList<ActorInvocationResponse> createRepeated() =>
      $pb.PbList<ActorInvocationResponse>();
  @$core.pragma('dart2js:noInline')
  static ActorInvocationResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ActorInvocationResponse>(create);
  static ActorInvocationResponse? _defaultInstance;

  ActorInvocationResponse_Payload whichPayload() =>
      _ActorInvocationResponse_PayloadByTag[$_whichOneof(0)]!;
  void clearPayload() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get actorName => $_getSZ(0);
  @$pb.TagNumber(1)
  set actorName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasActorName() => $_has(0);
  @$pb.TagNumber(1)
  void clearActorName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get actorSystem => $_getSZ(1);
  @$pb.TagNumber(2)
  set actorSystem($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasActorSystem() => $_has(1);
  @$pb.TagNumber(2)
  void clearActorSystem() => clearField(2);

  @$pb.TagNumber(3)
  Context get updatedContext => $_getN(2);
  @$pb.TagNumber(3)
  set updatedContext(Context v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUpdatedContext() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedContext() => clearField(3);
  @$pb.TagNumber(3)
  Context ensureUpdatedContext() => $_ensure(2);

  @$pb.TagNumber(4)
  $0.Any get value => $_getN(3);
  @$pb.TagNumber(4)
  set value($0.Any v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearValue() => clearField(4);
  @$pb.TagNumber(4)
  $0.Any ensureValue() => $_ensure(3);

  @$pb.TagNumber(5)
  Workflow get workflow => $_getN(4);
  @$pb.TagNumber(5)
  set workflow(Workflow v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasWorkflow() => $_has(4);
  @$pb.TagNumber(5)
  void clearWorkflow() => clearField(5);
  @$pb.TagNumber(5)
  Workflow ensureWorkflow() => $_ensure(4);

  @$pb.TagNumber(6)
  Noop get noop => $_getN(5);
  @$pb.TagNumber(6)
  set noop(Noop v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasNoop() => $_has(5);
  @$pb.TagNumber(6)
  void clearNoop() => clearField(6);
  @$pb.TagNumber(6)
  Noop ensureNoop() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.bool get checkpoint => $_getBF(6);
  @$pb.TagNumber(7)
  set checkpoint($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasCheckpoint() => $_has(6);
  @$pb.TagNumber(7)
  void clearCheckpoint() => clearField(7);
}

enum InvocationResponse_Payload { value, noop, notSet }

///  InvocationResponse is the response that the proxy that received the InvocationRequest request will forward to the request's original user function.
///
///  Params:
///    status: Status of request. Could be one of [UNKNOWN, OK, ACTOR_NOT_FOUND, ERROR].
///    system: The original ActorSystem of the InvocationRequest request.
///    actor: The target Actor originally sent in the InvocationRequest message.
///    value: The value resulting from the request processing that the target Actor made.
///           This value must be passed by the user function to the one who requested the initial request in InvocationRequest.
class InvocationResponse extends $pb.GeneratedMessage {
  factory InvocationResponse({
    RequestStatus? status,
    $1.ActorSystem? system,
    $1.Actor? actor,
    $0.Any? value,
    Noop? noop,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    if (system != null) {
      $result.system = system;
    }
    if (actor != null) {
      $result.actor = actor;
    }
    if (value != null) {
      $result.value = value;
    }
    if (noop != null) {
      $result.noop = noop;
    }
    return $result;
  }
  InvocationResponse._() : super();
  factory InvocationResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InvocationResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, InvocationResponse_Payload>
      _InvocationResponse_PayloadByTag = {
    4: InvocationResponse_Payload.value,
    5: InvocationResponse_Payload.noop,
    0: InvocationResponse_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'InvocationResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol'),
      createEmptyInstance: create)
    ..oo(0, [4, 5])
    ..aOM<RequestStatus>(1, _omitFieldNames ? '' : 'status',
        subBuilder: RequestStatus.create)
    ..aOM<$1.ActorSystem>(2, _omitFieldNames ? '' : 'system',
        subBuilder: $1.ActorSystem.create)
    ..aOM<$1.Actor>(3, _omitFieldNames ? '' : 'actor',
        subBuilder: $1.Actor.create)
    ..aOM<$0.Any>(4, _omitFieldNames ? '' : 'value', subBuilder: $0.Any.create)
    ..aOM<Noop>(5, _omitFieldNames ? '' : 'noop', subBuilder: Noop.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  InvocationResponse clone() => InvocationResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  InvocationResponse copyWith(void Function(InvocationResponse) updates) =>
      super.copyWith((message) => updates(message as InvocationResponse))
          as InvocationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InvocationResponse create() => InvocationResponse._();
  InvocationResponse createEmptyInstance() => create();
  static $pb.PbList<InvocationResponse> createRepeated() =>
      $pb.PbList<InvocationResponse>();
  @$core.pragma('dart2js:noInline')
  static InvocationResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InvocationResponse>(create);
  static InvocationResponse? _defaultInstance;

  InvocationResponse_Payload whichPayload() =>
      _InvocationResponse_PayloadByTag[$_whichOneof(0)]!;
  void clearPayload() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  RequestStatus get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(RequestStatus v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
  @$pb.TagNumber(1)
  RequestStatus ensureStatus() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.ActorSystem get system => $_getN(1);
  @$pb.TagNumber(2)
  set system($1.ActorSystem v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasSystem() => $_has(1);
  @$pb.TagNumber(2)
  void clearSystem() => clearField(2);
  @$pb.TagNumber(2)
  $1.ActorSystem ensureSystem() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Actor get actor => $_getN(2);
  @$pb.TagNumber(3)
  set actor($1.Actor v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasActor() => $_has(2);
  @$pb.TagNumber(3)
  void clearActor() => clearField(3);
  @$pb.TagNumber(3)
  $1.Actor ensureActor() => $_ensure(2);

  @$pb.TagNumber(4)
  $0.Any get value => $_getN(3);
  @$pb.TagNumber(4)
  set value($0.Any v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearValue() => clearField(4);
  @$pb.TagNumber(4)
  $0.Any ensureValue() => $_ensure(3);

  @$pb.TagNumber(5)
  Noop get noop => $_getN(4);
  @$pb.TagNumber(5)
  set noop(Noop v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasNoop() => $_has(4);
  @$pb.TagNumber(5)
  void clearNoop() => clearField(5);
  @$pb.TagNumber(5)
  Noop ensureNoop() => $_ensure(4);
}

class RequestStatus extends $pb.GeneratedMessage {
  factory RequestStatus({
    Status? status,
    $core.String? message,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  RequestStatus._() : super();
  factory RequestStatus.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RequestStatus.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequestStatus',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'eigr.functions.protocol'),
      createEmptyInstance: create)
    ..e<Status>(1, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE,
        defaultOrMaker: Status.UNKNOWN,
        valueOf: Status.valueOf,
        enumValues: Status.values)
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RequestStatus clone() => RequestStatus()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RequestStatus copyWith(void Function(RequestStatus) updates) =>
      super.copyWith((message) => updates(message as RequestStatus))
          as RequestStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequestStatus create() => RequestStatus._();
  RequestStatus createEmptyInstance() => create();
  static $pb.PbList<RequestStatus> createRepeated() =>
      $pb.PbList<RequestStatus>();
  @$core.pragma('dart2js:noInline')
  static RequestStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequestStatus>(create);
  static RequestStatus? _defaultInstance;

  @$pb.TagNumber(1)
  Status get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(Status v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
