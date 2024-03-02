// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql_example/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'get_launches.data.gql.g.dart';

abstract class GLaunchesData
    implements Built<GLaunchesData, GLaunchesDataBuilder> {
  GLaunchesData._();

  factory GLaunchesData([void Function(GLaunchesDataBuilder b) updates]) =
      _$GLaunchesData;

  static void _initializeBuilder(GLaunchesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GLaunchesData_launches?>? get launches;
  static Serializer<GLaunchesData> get serializer => _$gLaunchesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLaunchesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLaunchesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLaunchesData.serializer,
        json,
      );
}

abstract class GLaunchesData_launches
    implements Built<GLaunchesData_launches, GLaunchesData_launchesBuilder> {
  GLaunchesData_launches._();

  factory GLaunchesData_launches(
          [void Function(GLaunchesData_launchesBuilder b) updates]) =
      _$GLaunchesData_launches;

  static void _initializeBuilder(GLaunchesData_launchesBuilder b) =>
      b..G__typename = 'Launch';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  String? get details;
  DateTime? get launch_date_unix;
  GLaunchesData_launches_launch_site? get launch_site;
  String? get mission_name;
  bool? get upcoming;
  bool? get launch_success;
  GLaunchesData_launches_rocket? get rocket;
  static Serializer<GLaunchesData_launches> get serializer =>
      _$gLaunchesDataLaunchesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLaunchesData_launches.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLaunchesData_launches? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLaunchesData_launches.serializer,
        json,
      );
}

abstract class GLaunchesData_launches_launch_site
    implements
        Built<GLaunchesData_launches_launch_site,
            GLaunchesData_launches_launch_siteBuilder> {
  GLaunchesData_launches_launch_site._();

  factory GLaunchesData_launches_launch_site(
      [void Function(GLaunchesData_launches_launch_siteBuilder b)
          updates]) = _$GLaunchesData_launches_launch_site;

  static void _initializeBuilder(GLaunchesData_launches_launch_siteBuilder b) =>
      b..G__typename = 'LaunchSite';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get site_id;
  String? get site_name;
  String? get site_name_long;
  static Serializer<GLaunchesData_launches_launch_site> get serializer =>
      _$gLaunchesDataLaunchesLaunchSiteSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLaunchesData_launches_launch_site.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLaunchesData_launches_launch_site? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLaunchesData_launches_launch_site.serializer,
        json,
      );
}

abstract class GLaunchesData_launches_rocket
    implements
        Built<GLaunchesData_launches_rocket,
            GLaunchesData_launches_rocketBuilder> {
  GLaunchesData_launches_rocket._();

  factory GLaunchesData_launches_rocket(
          [void Function(GLaunchesData_launches_rocketBuilder b) updates]) =
      _$GLaunchesData_launches_rocket;

  static void _initializeBuilder(GLaunchesData_launches_rocketBuilder b) =>
      b..G__typename = 'LaunchRocket';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GLaunchesData_launches_rocket_rocket? get rocket;
  static Serializer<GLaunchesData_launches_rocket> get serializer =>
      _$gLaunchesDataLaunchesRocketSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLaunchesData_launches_rocket.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLaunchesData_launches_rocket? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLaunchesData_launches_rocket.serializer,
        json,
      );
}

abstract class GLaunchesData_launches_rocket_rocket
    implements
        Built<GLaunchesData_launches_rocket_rocket,
            GLaunchesData_launches_rocket_rocketBuilder> {
  GLaunchesData_launches_rocket_rocket._();

  factory GLaunchesData_launches_rocket_rocket(
      [void Function(GLaunchesData_launches_rocket_rocketBuilder b)
          updates]) = _$GLaunchesData_launches_rocket_rocket;

  static void _initializeBuilder(
          GLaunchesData_launches_rocket_rocketBuilder b) =>
      b..G__typename = 'Rocket';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  String? get name;
  int? get stages;
  String? get type;
  DateTime? get first_flight;
  String? get country;
  String? get description;
  String? get company;
  bool? get active;
  static Serializer<GLaunchesData_launches_rocket_rocket> get serializer =>
      _$gLaunchesDataLaunchesRocketRocketSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLaunchesData_launches_rocket_rocket.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLaunchesData_launches_rocket_rocket? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLaunchesData_launches_rocket_rocket.serializer,
        json,
      );
}
