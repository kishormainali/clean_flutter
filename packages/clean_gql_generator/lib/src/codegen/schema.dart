import 'package:clean_gql_generator/src/codegen/freezed_model.dart';
import 'package:clean_gql_generator/src/utils/common.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';
import 'package:gql_code_builder/schema.dart';
import 'package:gql_code_builder/source.dart';

Library buildSchemaCLibrary(
  SourceNode schemaSource,
  Map<String, Reference> typeOverrides,
  EnumFallbackConfig enumFallbackConfig,
  Allocator allocator,
  TriStateValueConfig triStateValueConfig,
  List<String> partUrls,
) {
  final lib = buildSchemaSpec(
    schemaSource,
    typeOverrides,
    enumFallbackConfig,
    allocator,
    triStateValueConfig,
  ) as Library;

  final Code? possibleTypes;
  if (lib.body.isNotEmpty) {
    possibleTypes = buildPossibleTypes(schemaSource.document);
  } else {
    possibleTypes = null;
  }
  return lib.rebuild((b) {
    if (possibleTypes != null) {
      b.body.add(possibleTypes);
    }
    return b..directives.addAll(partUrls.map((e) => Directive.part(e)));
  });
}

Spec? buildSchemaSpec(
  SourceNode schemaSource,
  Map<String, Reference> typeOverrides,
  EnumFallbackConfig enumFallbackConfig,
  Allocator allocator,
  TriStateValueConfig triStateValueConfig,
) {
  return schemaSource.document
      .accept(_SchemaBuilderVisitor(
        schemaSource: schemaSource,
        typeOverrides: typeOverrides,
        enumFallbackConfig: enumFallbackConfig,
        allocator: allocator,
        triStateValueConfig: triStateValueConfig,
      ))
      ?.first;
}

class _SchemaBuilderVisitor extends SimpleVisitor<List<Spec>?> {
  final SourceNode schemaSource;
  final Map<String, Reference> typeOverrides;
  final EnumFallbackConfig enumFallbackConfig;

  final Allocator allocator;

  final TriStateValueConfig triStateValueConfig;

  _SchemaBuilderVisitor({
    required this.schemaSource,
    required this.typeOverrides,
    required this.enumFallbackConfig,
    required this.allocator,
    required this.triStateValueConfig,
  });

  @override
  List<Spec>? visitDocumentNode(DocumentNode node) {
    return [
      Library(
        (b) => b.body.addAll(
          node.definitions.expand(
            (node) => node.accept(this) ?? [],
          ),
        ),
      )
    ];
  }

  @override
  List<Spec>? visitInputObjectTypeDefinitionNode(InputObjectTypeDefinitionNode node) {
    if (typeOverrides.containsKey(node.name.value)) {
      return null;
    }
    final inputClass = buildFreezedModel(
      name: node.name.value,
      parameters: node.fields
          .map(
            (e) => buildParameter(
              nameNode: e.name,
              typeNode: e.type,
              schemaSource: schemaSource,
            ),
          )
          .toList(),
    );

    return [inputClass];
  }

  @override
  List<Spec>? visitScalarTypeDefinitionNode(ScalarTypeDefinitionNode node) {
    // return typeOverrides.containsKey(node.name.value)
    //     ? null
    //     : [
    //         Class((b) => b.name = node.name.value),
    //       ];
    return null;
  }

  @override
  List<Spec>? visitEnumTypeDefinitionNode(EnumTypeDefinitionNode node) {
    return [
      Enum(
        (b) => b
          ..name = node.name.value
          ..values.addAll(
            node.values.map(
              (e) => EnumValue(
                (b) => b
                  ..name = e.name.value
                  ..annotations.add(CodeExpression(Code('JsonValue("${e.name.value}")'))),
              ),
            ),
          ),
      )
    ];
  }

  @override
  List<Spec>? visitObjectTypeDefinitionNode(ObjectTypeDefinitionNode node) {
    if (node.name.value == 'Query' || node.name.value == 'Mutation' || node.name.value == 'Subscription') {
      return null;
    }

    final typeClass = buildFreezedModel(
      name: node.name.value,
      parameters: node.fields
          .map(
            (e) => buildParameter(
              nameNode: e.name,
              typeNode: e.type,
              schemaSource: schemaSource,
            ),
          )
          .toList(),
    );
    return [typeClass];
  }
}
