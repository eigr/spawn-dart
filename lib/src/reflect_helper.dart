import 'dart:mirrors';

import 'package:optional/optional_internal.dart';
import 'package:protobuf/protobuf.dart';
import 'package:spawn_dart/spawn_dart.dart';

import 'google/protobuf/any.pb.dart';

class ReflectHelper {
  static final _logger = Logger(
    filter: SpawnLogFilter(),
    printer: LogfmtPrinter(),
    output: SimpleConsoleOutput(),
  );

  static Object createInstance(Type type,
      [Context? context,
      Symbol? constructor,
      List? arguments,
      Map<Symbol, dynamic>? namedArguments]) {
    arguments = [];
    constructor = Symbol('');

    var typeMirror = reflectType(type);

    if (typeMirror is ClassMirror) {
      var constructors =
          List.from(typeMirror.declarations.values.where((declare) {
        return declare is MethodMirror && declare.isConstructor;
      }));

      if (constructors.isEmpty) {
        return typeMirror
            .newInstance(constructor, arguments, namedArguments!)
            .reflectee;
      }

      throw ArgumentError(
          "Cannot create the instance of the Actor type '$type'.");
    } else {
      throw ArgumentError(
          "Cannot create the instance of the Actor type '$type'.");
    }
  }

  static Optional<Any> invoke(
      Object instance, MethodMirror method, Any? payload, Context context) {
    if (payload == null) {
      var instanceMirrorResult =
          reflect(instance).invoke(method.simpleName, []);

      var result = Any.pack(instanceMirrorResult.reflectee);
      _logger.d('\nResult: $instanceMirrorResult.\nType result:\n$result');

      return Optional.of(result);
    }

    if (method.parameters.isEmpty) {
      _logger.d('Using $method!');

      var instanceMirrorResult =
          reflect(instance).invoke(method.simpleName, []);
      var result = Any.pack(instanceMirrorResult.reflectee);
      _logger.d('\nResult: $instanceMirrorResult.\nType result:\n$result');

      return Optional.of(result);
    } else {
      _logger.d('Found Parameters on request method: $method');

      var arguments = [];
      for (var e in method.parameters) {
        _logger.d('Parameter Type is: ${e.type}');
        if (e.type.isAssignableTo(reflectType(GeneratedMessage))) {
          _logger.d('Set parameter ${MirrorSystem.getName(e.simpleName)}');
          var msg = ReflectHelper.createInstance(e.type.reflectedType);
          arguments.add(payload.unpackInto(msg as GeneratedMessage));
          _logger.d('Argument added!');
        } else if (e.type.isAssignableTo(reflectType(Context))) {
          _logger.d('Set parameter ${MirrorSystem.getName(e.simpleName)}');
          arguments.add(context);
        }
      }

      var instanceMirrorResult =
          reflect(instance).invoke(method.simpleName, arguments);
      _logger.d('Invoke response $instanceMirrorResult');
      if (MirrorSystem.getName(instanceMirrorResult.type.simpleName) !=
          'Null') {
        _logger.d(
            'InstanceMirrorResult not null. ${MirrorSystem.getName(instanceMirrorResult.type.simpleName)}');

        var result = Any.pack(instanceMirrorResult.reflectee);
        _logger.d('\nResult: $instanceMirrorResult.\nType result:\n$result');

        return Optional.ofNullable(result);
      } else {
        //handle void or null responses
        _logger.d('Handle void or null responses');
        return Optional.empty();
      }
    }
  }

  static List<MethodMirror> getAllMethods(ClassMirror entityClassMirror) {
    return entityClassMirror.declarations.values
        .where((d) => d is MethodMirror && !d.isConstructor)
        .map((f) => f as MethodMirror)
        .toList();
  }

  static Map<String, MethodMirror> getMethodsByAnnotation(
      List<MethodMirror> allDeclaredMethods, Type annotation) {
    final Map<String, MethodMirror> methods = {};
    var annotationMirror = reflectClass(annotation);

    allDeclaredMethods
        .where((elem) => isMethodAnnotationBy(elem, annotationMirror))
        .forEach(
            (e) => methods[capitalize(MirrorSystem.getName(e.simpleName))] = e);
    return methods;
  }

  static bool isMethodAnnotationBy(
          MethodMirror method, ClassMirror annotationMirror) =>
      method.metadata.where((test) => test.type == annotationMirror).isNotEmpty;
}
