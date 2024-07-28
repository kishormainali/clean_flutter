// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql_example/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'get_launches.var.gql.g.dart';

abstract class GLaunchesVars
    implements Built<GLaunchesVars, GLaunchesVarsBuilder> {
  GLaunchesVars._();

  factory GLaunchesVars([void Function(GLaunchesVarsBuilder b) updates]) =
      _$GLaunchesVars;

  static Serializer<GLaunchesVars> get serializer => _$gLaunchesVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLaunchesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLaunchesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLaunchesVars.serializer,
        json,
      );
}
