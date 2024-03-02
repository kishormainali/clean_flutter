// ignore_for_file: implementation_imports

import 'package:clean_gql_generator/src/allocators/gql_allocator.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';
import 'package:gql_code_builder/source.dart';
import 'package:gql_code_builder/src/config/tristate_optionals_config.dart';

Library buildFreezedVarLibrary(
  SourceNode docSource,
  SourceNode schemaSource,
  String partUrl,
  String freezedUrl,
  Map<String, Reference> typeOverrides,
  GqlAllocator varAllocator,
  TriStateValueConfig triStateValueConfig,
) {
  final operationVarClasses = docSource.document.definitions.whereType<OperationDefinitionNode>().map((op) {
    print(op.selectionSet.selections);
    return freezedClass(
      name: "${op.name!.value}Vars",
      fields: op.variableDefinitions
          .map((e) => Parameter(
                (b) => b
                  ..name = e.variable.name.value
                  ..named = true
                  ..type = refer('String'),
              ))
          .toList(),
    );
    // return builtClass(
    //     name: "${op.name!.value}Vars",
    //     getters: op.variableDefinitions.map<Method>(
    //       (node) => buildOptionalGetter(
    //         nameNode: node.variable.name,
    //         typeNode: node.type,
    //         schemaSource: schemaSource,
    //         typeOverrides: typeOverrides,
    //         useTriStateValueForNullableTypes: useTriStateValueForNullableTypes,
    //       ),
    //     ),
    //     hasCustomSerializer: hasCustomSerializer,
    //     initializers: switch (useTriStateValueForNullableTypes) {
    //       TriStateValueConfig.onAllNullableFields => _varClassValueInitializers(op),
    //       TriStateValueConfig.never => {},
    //     },
    //     methods: [
    //       if (hasCustomSerializer) nullAwareJsonSerializerField(op, "G${op.name!.value}Vars"),
    //     ]);
  }).toList();

  Map<String, FragmentDefinitionNode> fragmentMap(SourceNode source) => {
        for (final def in source.document.definitions.whereType<FragmentDefinitionNode>()) def.name.value: def,
        for (final import in source.imports) ...fragmentMap(import),
      };

  final fragmentVarClasses = docSource.document.definitions.whereType<FragmentDefinitionNode>().map((frag) {
    // final varTypes = fragmentVarTypes(
    //   fragment: frag,
    //   fragmentMap: fragmentMap(docSource),
    //   schema: schemaSource.document,
    // );
    return freezedClass(
      name: "${frag.name.value}Vars",
      fields: [],
    );
  }).toList();

  return Library(
    (b) => b
      ..directives.addAll([
        Directive.import('package:freezed_annotation/freezed_annotation.dart'),
        Directive.part(partUrl),
        Directive.part(freezedUrl),
      ])
      ..body.addAll([
        ...operationVarClasses,
        ...fragmentVarClasses,
      ]),
  );
}

// Map<String, Expression> _varClassValueInitializers(OperationDefinitionNode op) => {
//       for (final node in op.variableDefinitions.where((element) => !element.type.isNonNull)) identifier(node.variable.name.value): absentValueConstructorInvocation(),
//     };

Class freezedClass({
  required String name,
  required List<Parameter> fields,
}) {
  return Class(
    (b) => b
      ..name = name
      ..sealed = true
      ..annotations.addAll(
        [
          refer('freezed'),
        ],
      )
      ..mixins.add(
        refer('_\$$name'),
      )
      ..constructors.addAll([
        Constructor(
          (b) => b
            ..constant = true
            ..name = '_',
        ),
        Constructor((b) => b
          ..factory = true
          ..optionalParameters.addAll(fields)
          ..redirect = refer('_$name')),
        Constructor(
          (b) => b
            ..factory = true
            ..name = 'fromJson'
            ..requiredParameters.add(
              Parameter(
                (b) => b
                  ..name = 'json'
                  ..type = refer('Map<String, dynamic>'),
              ),
            )
            ..lambda = true
            ..body = refer('_\$${name}FromJson').call([refer('json')]).code,
        ),
      ]),
  );
}
