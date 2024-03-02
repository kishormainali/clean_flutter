// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:graphql_example/graphql/__generated__/serializers.gql.dart'
    as _i1;

part 'get_launch_details.data.gql.g.dart';

abstract class GLaunchData implements Built<GLaunchData, GLaunchDataBuilder> {
  GLaunchData._();

  factory GLaunchData([void Function(GLaunchDataBuilder b) updates]) =
      _$GLaunchData;

  static void _initializeBuilder(GLaunchDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GLaunchData_launch? get launch;
  static Serializer<GLaunchData> get serializer => _$gLaunchDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLaunchData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLaunchData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLaunchData.serializer,
        json,
      );
}

abstract class GLaunchData_launch
    implements Built<GLaunchData_launch, GLaunchData_launchBuilder> {
  GLaunchData_launch._();

  factory GLaunchData_launch(
          [void Function(GLaunchData_launchBuilder b) updates]) =
      _$GLaunchData_launch;

  static void _initializeBuilder(GLaunchData_launchBuilder b) =>
      b..G__typename = 'Launch';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get id;
  String? get details;
  DateTime? get launch_date_unix;
  GLaunchData_launch_launch_site? get launch_site;
  String? get mission_name;
  bool? get upcoming;
  bool? get launch_success;
  GLaunchData_launch_rocket? get rocket;
  static Serializer<GLaunchData_launch> get serializer =>
      _$gLaunchDataLaunchSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLaunchData_launch.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLaunchData_launch? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLaunchData_launch.serializer,
        json,
      );
}

abstract class GLaunchData_launch_launch_site
    implements
        Built<GLaunchData_launch_launch_site,
            GLaunchData_launch_launch_siteBuilder> {
  GLaunchData_launch_launch_site._();

  factory GLaunchData_launch_launch_site(
          [void Function(GLaunchData_launch_launch_siteBuilder b) updates]) =
      _$GLaunchData_launch_launch_site;

  static void _initializeBuilder(GLaunchData_launch_launch_siteBuilder b) =>
      b..G__typename = 'LaunchSite';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get site_id;
  String? get site_name;
  String? get site_name_long;
  static Serializer<GLaunchData_launch_launch_site> get serializer =>
      _$gLaunchDataLaunchLaunchSiteSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLaunchData_launch_launch_site.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLaunchData_launch_launch_site? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLaunchData_launch_launch_site.serializer,
        json,
      );
}

abstract class GLaunchData_launch_rocket
    implements
        Built<GLaunchData_launch_rocket, GLaunchData_launch_rocketBuilder> {
  GLaunchData_launch_rocket._();

  factory GLaunchData_launch_rocket(
          [void Function(GLaunchData_launch_rocketBuilder b) updates]) =
      _$GLaunchData_launch_rocket;

  static void _initializeBuilder(GLaunchData_launch_rocketBuilder b) =>
      b..G__typename = 'LaunchRocket';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GLaunchData_launch_rocket_rocket? get rocket;
  static Serializer<GLaunchData_launch_rocket> get serializer =>
      _$gLaunchDataLaunchRocketSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLaunchData_launch_rocket.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLaunchData_launch_rocket? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLaunchData_launch_rocket.serializer,
        json,
      );
}

abstract class GLaunchData_launch_rocket_rocket
    implements
        Built<GLaunchData_launch_rocket_rocket,
            GLaunchData_launch_rocket_rocketBuilder> {
  GLaunchData_launch_rocket_rocket._();

  factory GLaunchData_launch_rocket_rocket(
          [void Function(GLaunchData_launch_rocket_rocketBuilder b) updates]) =
      _$GLaunchData_launch_rocket_rocket;

  static void _initializeBuilder(GLaunchData_launch_rocket_rocketBuilder b) =>
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
  static Serializer<GLaunchData_launch_rocket_rocket> get serializer =>
      _$gLaunchDataLaunchRocketRocketSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GLaunchData_launch_rocket_rocket.serializer,
        this,
      ) as Map<String, dynamic>);

  static GLaunchData_launch_rocket_rocket? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GLaunchData_launch_rocket_rocket.serializer,
        json,
      );
}
