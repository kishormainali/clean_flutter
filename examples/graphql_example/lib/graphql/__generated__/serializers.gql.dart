// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:clean_graphql/clean_graphql.dart' show DateSerializer;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:graphql_example/graphql/__generated__/schema.schema.gql.dart'
    show
        GCapsulesFind,
        GCoresFind,
        GHistoryFind,
        GLaunchFind,
        GMissionsFind,
        GObjectID,
        GPayloadsFind,
        GShipsFind,
        GString_comparison_exp,
        Gconflict_action,
        Gorder_by,
        Gtimestamptz,
        Gtimestamptz_comparison_exp,
        Gusers_aggregate_order_by,
        Gusers_arr_rel_insert_input,
        Gusers_bool_exp,
        Gusers_constraint,
        Gusers_insert_input,
        Gusers_max_order_by,
        Gusers_min_order_by,
        Gusers_obj_rel_insert_input,
        Gusers_on_conflict,
        Gusers_order_by,
        Gusers_select_column,
        Gusers_set_input,
        Gusers_update_column,
        Guuid,
        Guuid_comparison_exp;
import 'package:graphql_example/src/features/launches/data/graphql/__generated__/get_launch_details.data.gql.dart'
    show
        GLaunchData,
        GLaunchData_launch,
        GLaunchData_launch_launch_site,
        GLaunchData_launch_rocket,
        GLaunchData_launch_rocket_rocket;
import 'package:graphql_example/src/features/launches/data/graphql/__generated__/get_launch_details.req.gql.dart'
    show GLaunchReq;
import 'package:graphql_example/src/features/launches/data/graphql/__generated__/get_launch_details.var.gql.dart'
    show GLaunchVars;
import 'package:graphql_example/src/features/launches/data/graphql/__generated__/get_launches.data.gql.dart'
    show
        GLaunchesData,
        GLaunchesData_launches,
        GLaunchesData_launches_launch_site,
        GLaunchesData_launches_rocket,
        GLaunchesData_launches_rocket_rocket;
import 'package:graphql_example/src/features/launches/data/graphql/__generated__/get_launches.req.gql.dart'
    show GLaunchesReq;
import 'package:graphql_example/src/features/launches/data/graphql/__generated__/get_launches.var.gql.dart'
    show GLaunchesVars;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..add(DateSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCapsulesFind,
  GCoresFind,
  GHistoryFind,
  GLaunchData,
  GLaunchData_launch,
  GLaunchData_launch_launch_site,
  GLaunchData_launch_rocket,
  GLaunchData_launch_rocket_rocket,
  GLaunchFind,
  GLaunchReq,
  GLaunchVars,
  GLaunchesData,
  GLaunchesData_launches,
  GLaunchesData_launches_launch_site,
  GLaunchesData_launches_rocket,
  GLaunchesData_launches_rocket_rocket,
  GLaunchesReq,
  GLaunchesVars,
  GMissionsFind,
  GObjectID,
  GPayloadsFind,
  GShipsFind,
  GString_comparison_exp,
  Gconflict_action,
  Gorder_by,
  Gtimestamptz,
  Gtimestamptz_comparison_exp,
  Gusers_aggregate_order_by,
  Gusers_arr_rel_insert_input,
  Gusers_bool_exp,
  Gusers_constraint,
  Gusers_insert_input,
  Gusers_max_order_by,
  Gusers_min_order_by,
  Gusers_obj_rel_insert_input,
  Gusers_on_conflict,
  Gusers_order_by,
  Gusers_select_column,
  Gusers_set_input,
  Gusers_update_column,
  Guuid,
  Guuid_comparison_exp,
])
final Serializers serializers = _serializersBuilder.build();
