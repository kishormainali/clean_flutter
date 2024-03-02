// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql_example/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'get_launch_details.var.gql.g.dart';

abstract class GLaunchVars implements Built<GLaunchVars, GLaunchVarsBuilder> {
  GLaunchVars._();

  factory GLaunchVars([void Function(GLaunchVarsBuilder b) updates]) =
      _$GLaunchVars;

  String get launchId;
  static Serializer<GLaunchVars> get serializer => _$gLaunchVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLaunchVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLaunchVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLaunchVars.serializer,
        json,
      );
}
