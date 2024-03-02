// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:graphql_example/graphql/__generated__/serializers.gql.dart'
    as _i6;
import 'package:graphql_example/src/features/launches/data/graphql/__generated__/get_launch_details.ast.gql.dart'
    as _i5;
import 'package:graphql_example/src/features/launches/data/graphql/__generated__/get_launch_details.data.gql.dart'
    as _i2;
import 'package:graphql_example/src/features/launches/data/graphql/__generated__/get_launch_details.var.gql.dart'
    as _i3;

part 'get_launch_details.req.gql.g.dart';

abstract class GLaunchReq
    implements
        Built<GLaunchReq, GLaunchReqBuilder>,
        _i1.OperationRequest<_i2.GLaunchData, _i3.GLaunchVars> {
  GLaunchReq._();

  factory GLaunchReq([void Function(GLaunchReqBuilder b) updates]) =
      _$GLaunchReq;

  static void _initializeBuilder(GLaunchReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Launch',
    )
    ..executeOnListen = true;

  @override
  _i3.GLaunchVars get vars;
  @override
  _i4.Operation get operation;
  @override
  _i4.Request get execRequest => _i4.Request(
        operation: operation,
        variables: vars.toJson(),
        context: context ?? const _i4.Context(),
      );

  @override
  String? get requestId;
  @override
  @BuiltValueField(serialize: false)
  _i2.GLaunchData? Function(
    _i2.GLaunchData?,
    _i2.GLaunchData?,
  )? get updateResult;
  @override
  _i2.GLaunchData? get optimisticResponse;
  @override
  String? get updateCacheHandlerKey;
  @override
  Map<String, dynamic>? get updateCacheHandlerContext;
  @override
  _i1.FetchPolicy? get fetchPolicy;
  @override
  bool get executeOnListen;
  @override
  @BuiltValueField(serialize: false)
  _i4.Context? get context;
  @override
  _i2.GLaunchData? parseData(Map<String, dynamic> json) =>
      _i2.GLaunchData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GLaunchData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GLaunchData, _i3.GLaunchVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GLaunchReq> get serializer => _$gLaunchReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GLaunchReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLaunchReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GLaunchReq.serializer,
        json,
      );
}
