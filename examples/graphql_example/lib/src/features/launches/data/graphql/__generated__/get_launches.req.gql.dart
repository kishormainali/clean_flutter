// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:graphql_example/graphql/__generated__/serializers.gql.dart'
    as _i6;
import 'package:graphql_example/src/features/launches/data/graphql/__generated__/get_launches.ast.gql.dart'
    as _i5;
import 'package:graphql_example/src/features/launches/data/graphql/__generated__/get_launches.data.gql.dart'
    as _i2;
import 'package:graphql_example/src/features/launches/data/graphql/__generated__/get_launches.var.gql.dart'
    as _i3;

part 'get_launches.req.gql.g.dart';

abstract class GLaunchesReq
    implements
        Built<GLaunchesReq, GLaunchesReqBuilder>,
        _i1.OperationRequest<_i2.GLaunchesData, _i3.GLaunchesVars> {
  GLaunchesReq._();

  factory GLaunchesReq([void Function(GLaunchesReqBuilder b) updates]) =
      _$GLaunchesReq;

  static void _initializeBuilder(GLaunchesReqBuilder b) => b
    ..operation = _i4.Operation(
      document: _i5.document,
      operationName: 'Launches',
    )
    ..executeOnListen = true;

  @override
  _i3.GLaunchesVars get vars;
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
  _i2.GLaunchesData? Function(
    _i2.GLaunchesData?,
    _i2.GLaunchesData?,
  )? get updateResult;
  @override
  _i2.GLaunchesData? get optimisticResponse;
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
  _i2.GLaunchesData? parseData(Map<String, dynamic> json) =>
      _i2.GLaunchesData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GLaunchesData data) => data.toJson();

  @override
  _i1.OperationRequest<_i2.GLaunchesData, _i3.GLaunchesVars> transformOperation(
          _i4.Operation Function(_i4.Operation) transform) =>
      this.rebuild((b) => b..operation = transform(operation));

  static Serializer<GLaunchesReq> get serializer => _$gLaunchesReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GLaunchesReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLaunchesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GLaunchesReq.serializer,
        json,
      );
}
