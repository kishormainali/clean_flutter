// ignore_for_file: implementation_imports

import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';
import 'package:gql_code_builder/source.dart';
import 'package:gql_code_builder/src/common.dart';

const _reserved = <String>[
  "else",
  "assert",
  "enum",
  "in",
  "super",
  "switch",
  "extends",
  "is",
  "break",
  "this",
  "case",
  "throw",
  "catch",
  "false",
  "new",
  "true",
  "class",
  "final",
  "null",
  "try",
  "const",
  "finally",
  "continue",
  "for",
  "var",
  "void",
  "default",
  "rethrow",
  "while",
  "return",
  "with",
  "do",
  "if",
  "bool",
  "int",
  "double",
  "String",
  "Function",
  "Map",
  "List",
  "Set",
  "update",
  "values",
  "build",
  "replace",
  "toJson",
  "fromJson",
  "serializer",
  "required",
];

Reference _typeRef(TypeNode type, Map<String, Reference> typeMap) {
  if (type is NamedTypeNode) {
    final ref = typeMap[type.name.value] ?? Reference(type.name.value);
    assert(ref.symbol != null, "Symbol for $ref must not be null");
    return TypeReference(
      (b) => b
        ..url = ref.url
        ..symbol = ref.symbol
        ..isNullable = !type.isNonNull,
    );
  } else if (type is ListTypeNode) {
    return TypeReference(
      (b) => b
        ..symbol = "List"
        ..isNullable = !type.isNonNull
        ..types.add(_typeRef(type.type, typeMap)),
    );
  }
  throw Exception("Unrecognized TypeNode type");
}

Parameter buildParameter({
  required NameNode nameNode,
  required TypeNode typeNode,
  required SourceNode schemaSource,
  Map<String, Reference> typeOverrides = const {},
  Reference? typeRefAlias,
}) {
  final unwrappedTypeNode = unwrapTypeNode(typeNode);
  final typeName = unwrappedTypeNode.name.value;
  final typeDef = getTypeDefinitionNode(
    schemaSource.document,
    typeName,
  );

  final typeMap = {
    ...defaultTypeMap,
    if (typeRefAlias != null)
      typeName: typeRefAlias
    else if (typeDef != null)
      typeName: refer(
        typeName,
        "${schemaSource.url}#schema",
      ),
    ...typeOverrides,
  };

  final returnType = _typeRef(
    typeNode,
    typeMap,
  );
  return Parameter(
    (b) => b
      ..name = identifier(nameNode.value)
      ..required = typeNode.isNonNull
      ..named = true
      ..type = returnType,
  );
}
