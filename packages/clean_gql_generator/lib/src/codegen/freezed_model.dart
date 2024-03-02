import 'package:code_builder/code_builder.dart';

Spec buildFreezedModel({
  required String name,
  List<Parameter> parameters = const [],
}) {
  return Class(
    (b) => b
      ..name = name
      ..sealed = true
      ..annotations.add(const Reference('Freezed', 'package:freezed_annotation/freezed_annotation.dart').call(
        [],
        {
          'map': refer('FreezedMapOptions.none'),
          'when': refer(
            'FreezedWhenOptions.none',
          )
        },
      ))
      ..mixins.add(Reference('_\$$name'))
      ..constructors.addAll([
        Constructor((b) => b
          ..constant = true
          ..name = '_'),
        Constructor(
          (b) => b
            ..factory = true
            ..optionalParameters.addAll(parameters)
            ..constant = true
            ..redirect = Reference('_$name'),
        ),
        Constructor(
          (b) => b
            ..factory = true
            ..name = 'fromJson'
            ..requiredParameters.add(Parameter((b) => b
              ..name = 'json'
              ..type = refer('Map<String, dynamic>')))
            ..lambda = true
            ..body = Code('''
              _\$${name}FromJson(json)
            '''),
        )
      ]),
  );
}
