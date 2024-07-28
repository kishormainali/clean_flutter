// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_launch_details.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLaunchData> _$gLaunchDataSerializer = new _$GLaunchDataSerializer();
Serializer<GLaunchData_launch> _$gLaunchDataLaunchSerializer =
    new _$GLaunchData_launchSerializer();
Serializer<GLaunchData_launch_launch_site>
    _$gLaunchDataLaunchLaunchSiteSerializer =
    new _$GLaunchData_launch_launch_siteSerializer();
Serializer<GLaunchData_launch_rocket> _$gLaunchDataLaunchRocketSerializer =
    new _$GLaunchData_launch_rocketSerializer();
Serializer<GLaunchData_launch_rocket_rocket>
    _$gLaunchDataLaunchRocketRocketSerializer =
    new _$GLaunchData_launch_rocket_rocketSerializer();

class _$GLaunchDataSerializer implements StructuredSerializer<GLaunchData> {
  @override
  final Iterable<Type> types = const [GLaunchData, _$GLaunchData];
  @override
  final String wireName = 'GLaunchData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLaunchData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.launch;
    if (value != null) {
      result
        ..add('launch')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GLaunchData_launch)));
    }
    return result;
  }

  @override
  GLaunchData deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLaunchDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'launch':
          result.launch.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GLaunchData_launch))!
              as GLaunchData_launch);
          break;
      }
    }

    return result.build();
  }
}

class _$GLaunchData_launchSerializer
    implements StructuredSerializer<GLaunchData_launch> {
  @override
  final Iterable<Type> types = const [GLaunchData_launch, _$GLaunchData_launch];
  @override
  final String wireName = 'GLaunchData_launch';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLaunchData_launch object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.details;
    if (value != null) {
      result
        ..add('details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.launch_date_unix;
    if (value != null) {
      result
        ..add('launch_date_unix')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.launch_site;
    if (value != null) {
      result
        ..add('launch_site')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GLaunchData_launch_launch_site)));
    }
    value = object.mission_name;
    if (value != null) {
      result
        ..add('mission_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.upcoming;
    if (value != null) {
      result
        ..add('upcoming')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.launch_success;
    if (value != null) {
      result
        ..add('launch_success')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.rocket;
    if (value != null) {
      result
        ..add('rocket')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GLaunchData_launch_rocket)));
    }
    return result;
  }

  @override
  GLaunchData_launch deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLaunchData_launchBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'details':
          result.details = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'launch_date_unix':
          result.launch_date_unix = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'launch_site':
          result.launch_site.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GLaunchData_launch_launch_site))!
              as GLaunchData_launch_launch_site);
          break;
        case 'mission_name':
          result.mission_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'upcoming':
          result.upcoming = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'launch_success':
          result.launch_success = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'rocket':
          result.rocket.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GLaunchData_launch_rocket))!
              as GLaunchData_launch_rocket);
          break;
      }
    }

    return result.build();
  }
}

class _$GLaunchData_launch_launch_siteSerializer
    implements StructuredSerializer<GLaunchData_launch_launch_site> {
  @override
  final Iterable<Type> types = const [
    GLaunchData_launch_launch_site,
    _$GLaunchData_launch_launch_site
  ];
  @override
  final String wireName = 'GLaunchData_launch_launch_site';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLaunchData_launch_launch_site object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.site_id;
    if (value != null) {
      result
        ..add('site_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.site_name;
    if (value != null) {
      result
        ..add('site_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.site_name_long;
    if (value != null) {
      result
        ..add('site_name_long')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GLaunchData_launch_launch_site deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLaunchData_launch_launch_siteBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'site_id':
          result.site_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'site_name':
          result.site_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'site_name_long':
          result.site_name_long = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GLaunchData_launch_rocketSerializer
    implements StructuredSerializer<GLaunchData_launch_rocket> {
  @override
  final Iterable<Type> types = const [
    GLaunchData_launch_rocket,
    _$GLaunchData_launch_rocket
  ];
  @override
  final String wireName = 'GLaunchData_launch_rocket';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLaunchData_launch_rocket object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.rocket;
    if (value != null) {
      result
        ..add('rocket')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GLaunchData_launch_rocket_rocket)));
    }
    return result;
  }

  @override
  GLaunchData_launch_rocket deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLaunchData_launch_rocketBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'rocket':
          result.rocket.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GLaunchData_launch_rocket_rocket))!
              as GLaunchData_launch_rocket_rocket);
          break;
      }
    }

    return result.build();
  }
}

class _$GLaunchData_launch_rocket_rocketSerializer
    implements StructuredSerializer<GLaunchData_launch_rocket_rocket> {
  @override
  final Iterable<Type> types = const [
    GLaunchData_launch_rocket_rocket,
    _$GLaunchData_launch_rocket_rocket
  ];
  @override
  final String wireName = 'GLaunchData_launch_rocket_rocket';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLaunchData_launch_rocket_rocket object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.stages;
    if (value != null) {
      result
        ..add('stages')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.first_flight;
    if (value != null) {
      result
        ..add('first_flight')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.company;
    if (value != null) {
      result
        ..add('company')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.active;
    if (value != null) {
      result
        ..add('active')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GLaunchData_launch_rocket_rocket deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLaunchData_launch_rocket_rocketBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'stages':
          result.stages = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'first_flight':
          result.first_flight = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'company':
          result.company = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GLaunchData extends GLaunchData {
  @override
  final String G__typename;
  @override
  final GLaunchData_launch? launch;

  factory _$GLaunchData([void Function(GLaunchDataBuilder)? updates]) =>
      (new GLaunchDataBuilder()..update(updates))._build();

  _$GLaunchData._({required this.G__typename, this.launch}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLaunchData', 'G__typename');
  }

  @override
  GLaunchData rebuild(void Function(GLaunchDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLaunchDataBuilder toBuilder() => new GLaunchDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLaunchData &&
        G__typename == other.G__typename &&
        launch == other.launch;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, launch.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLaunchData')
          ..add('G__typename', G__typename)
          ..add('launch', launch))
        .toString();
  }
}

class GLaunchDataBuilder implements Builder<GLaunchData, GLaunchDataBuilder> {
  _$GLaunchData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GLaunchData_launchBuilder? _launch;
  GLaunchData_launchBuilder get launch =>
      _$this._launch ??= new GLaunchData_launchBuilder();
  set launch(GLaunchData_launchBuilder? launch) => _$this._launch = launch;

  GLaunchDataBuilder() {
    GLaunchData._initializeBuilder(this);
  }

  GLaunchDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _launch = $v.launch?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLaunchData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLaunchData;
  }

  @override
  void update(void Function(GLaunchDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLaunchData build() => _build();

  _$GLaunchData _build() {
    _$GLaunchData _$result;
    try {
      _$result = _$v ??
          new _$GLaunchData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GLaunchData', 'G__typename'),
              launch: _launch?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'launch';
        _launch?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GLaunchData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLaunchData_launch extends GLaunchData_launch {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final String? details;
  @override
  final DateTime? launch_date_unix;
  @override
  final GLaunchData_launch_launch_site? launch_site;
  @override
  final String? mission_name;
  @override
  final bool? upcoming;
  @override
  final bool? launch_success;
  @override
  final GLaunchData_launch_rocket? rocket;

  factory _$GLaunchData_launch(
          [void Function(GLaunchData_launchBuilder)? updates]) =>
      (new GLaunchData_launchBuilder()..update(updates))._build();

  _$GLaunchData_launch._(
      {required this.G__typename,
      this.id,
      this.details,
      this.launch_date_unix,
      this.launch_site,
      this.mission_name,
      this.upcoming,
      this.launch_success,
      this.rocket})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLaunchData_launch', 'G__typename');
  }

  @override
  GLaunchData_launch rebuild(
          void Function(GLaunchData_launchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLaunchData_launchBuilder toBuilder() =>
      new GLaunchData_launchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLaunchData_launch &&
        G__typename == other.G__typename &&
        id == other.id &&
        details == other.details &&
        launch_date_unix == other.launch_date_unix &&
        launch_site == other.launch_site &&
        mission_name == other.mission_name &&
        upcoming == other.upcoming &&
        launch_success == other.launch_success &&
        rocket == other.rocket;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jc(_$hash, launch_date_unix.hashCode);
    _$hash = $jc(_$hash, launch_site.hashCode);
    _$hash = $jc(_$hash, mission_name.hashCode);
    _$hash = $jc(_$hash, upcoming.hashCode);
    _$hash = $jc(_$hash, launch_success.hashCode);
    _$hash = $jc(_$hash, rocket.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLaunchData_launch')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('details', details)
          ..add('launch_date_unix', launch_date_unix)
          ..add('launch_site', launch_site)
          ..add('mission_name', mission_name)
          ..add('upcoming', upcoming)
          ..add('launch_success', launch_success)
          ..add('rocket', rocket))
        .toString();
  }
}

class GLaunchData_launchBuilder
    implements Builder<GLaunchData_launch, GLaunchData_launchBuilder> {
  _$GLaunchData_launch? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _details;
  String? get details => _$this._details;
  set details(String? details) => _$this._details = details;

  DateTime? _launch_date_unix;
  DateTime? get launch_date_unix => _$this._launch_date_unix;
  set launch_date_unix(DateTime? launch_date_unix) =>
      _$this._launch_date_unix = launch_date_unix;

  GLaunchData_launch_launch_siteBuilder? _launch_site;
  GLaunchData_launch_launch_siteBuilder get launch_site =>
      _$this._launch_site ??= new GLaunchData_launch_launch_siteBuilder();
  set launch_site(GLaunchData_launch_launch_siteBuilder? launch_site) =>
      _$this._launch_site = launch_site;

  String? _mission_name;
  String? get mission_name => _$this._mission_name;
  set mission_name(String? mission_name) => _$this._mission_name = mission_name;

  bool? _upcoming;
  bool? get upcoming => _$this._upcoming;
  set upcoming(bool? upcoming) => _$this._upcoming = upcoming;

  bool? _launch_success;
  bool? get launch_success => _$this._launch_success;
  set launch_success(bool? launch_success) =>
      _$this._launch_success = launch_success;

  GLaunchData_launch_rocketBuilder? _rocket;
  GLaunchData_launch_rocketBuilder get rocket =>
      _$this._rocket ??= new GLaunchData_launch_rocketBuilder();
  set rocket(GLaunchData_launch_rocketBuilder? rocket) =>
      _$this._rocket = rocket;

  GLaunchData_launchBuilder() {
    GLaunchData_launch._initializeBuilder(this);
  }

  GLaunchData_launchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _details = $v.details;
      _launch_date_unix = $v.launch_date_unix;
      _launch_site = $v.launch_site?.toBuilder();
      _mission_name = $v.mission_name;
      _upcoming = $v.upcoming;
      _launch_success = $v.launch_success;
      _rocket = $v.rocket?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLaunchData_launch other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLaunchData_launch;
  }

  @override
  void update(void Function(GLaunchData_launchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLaunchData_launch build() => _build();

  _$GLaunchData_launch _build() {
    _$GLaunchData_launch _$result;
    try {
      _$result = _$v ??
          new _$GLaunchData_launch._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GLaunchData_launch', 'G__typename'),
              id: id,
              details: details,
              launch_date_unix: launch_date_unix,
              launch_site: _launch_site?.build(),
              mission_name: mission_name,
              upcoming: upcoming,
              launch_success: launch_success,
              rocket: _rocket?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'launch_site';
        _launch_site?.build();

        _$failedField = 'rocket';
        _rocket?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GLaunchData_launch', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLaunchData_launch_launch_site extends GLaunchData_launch_launch_site {
  @override
  final String G__typename;
  @override
  final String? site_id;
  @override
  final String? site_name;
  @override
  final String? site_name_long;

  factory _$GLaunchData_launch_launch_site(
          [void Function(GLaunchData_launch_launch_siteBuilder)? updates]) =>
      (new GLaunchData_launch_launch_siteBuilder()..update(updates))._build();

  _$GLaunchData_launch_launch_site._(
      {required this.G__typename,
      this.site_id,
      this.site_name,
      this.site_name_long})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLaunchData_launch_launch_site', 'G__typename');
  }

  @override
  GLaunchData_launch_launch_site rebuild(
          void Function(GLaunchData_launch_launch_siteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLaunchData_launch_launch_siteBuilder toBuilder() =>
      new GLaunchData_launch_launch_siteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLaunchData_launch_launch_site &&
        G__typename == other.G__typename &&
        site_id == other.site_id &&
        site_name == other.site_name &&
        site_name_long == other.site_name_long;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, site_id.hashCode);
    _$hash = $jc(_$hash, site_name.hashCode);
    _$hash = $jc(_$hash, site_name_long.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLaunchData_launch_launch_site')
          ..add('G__typename', G__typename)
          ..add('site_id', site_id)
          ..add('site_name', site_name)
          ..add('site_name_long', site_name_long))
        .toString();
  }
}

class GLaunchData_launch_launch_siteBuilder
    implements
        Builder<GLaunchData_launch_launch_site,
            GLaunchData_launch_launch_siteBuilder> {
  _$GLaunchData_launch_launch_site? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _site_id;
  String? get site_id => _$this._site_id;
  set site_id(String? site_id) => _$this._site_id = site_id;

  String? _site_name;
  String? get site_name => _$this._site_name;
  set site_name(String? site_name) => _$this._site_name = site_name;

  String? _site_name_long;
  String? get site_name_long => _$this._site_name_long;
  set site_name_long(String? site_name_long) =>
      _$this._site_name_long = site_name_long;

  GLaunchData_launch_launch_siteBuilder() {
    GLaunchData_launch_launch_site._initializeBuilder(this);
  }

  GLaunchData_launch_launch_siteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _site_id = $v.site_id;
      _site_name = $v.site_name;
      _site_name_long = $v.site_name_long;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLaunchData_launch_launch_site other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLaunchData_launch_launch_site;
  }

  @override
  void update(void Function(GLaunchData_launch_launch_siteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLaunchData_launch_launch_site build() => _build();

  _$GLaunchData_launch_launch_site _build() {
    final _$result = _$v ??
        new _$GLaunchData_launch_launch_site._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, r'GLaunchData_launch_launch_site', 'G__typename'),
            site_id: site_id,
            site_name: site_name,
            site_name_long: site_name_long);
    replace(_$result);
    return _$result;
  }
}

class _$GLaunchData_launch_rocket extends GLaunchData_launch_rocket {
  @override
  final String G__typename;
  @override
  final GLaunchData_launch_rocket_rocket? rocket;

  factory _$GLaunchData_launch_rocket(
          [void Function(GLaunchData_launch_rocketBuilder)? updates]) =>
      (new GLaunchData_launch_rocketBuilder()..update(updates))._build();

  _$GLaunchData_launch_rocket._({required this.G__typename, this.rocket})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLaunchData_launch_rocket', 'G__typename');
  }

  @override
  GLaunchData_launch_rocket rebuild(
          void Function(GLaunchData_launch_rocketBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLaunchData_launch_rocketBuilder toBuilder() =>
      new GLaunchData_launch_rocketBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLaunchData_launch_rocket &&
        G__typename == other.G__typename &&
        rocket == other.rocket;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, rocket.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLaunchData_launch_rocket')
          ..add('G__typename', G__typename)
          ..add('rocket', rocket))
        .toString();
  }
}

class GLaunchData_launch_rocketBuilder
    implements
        Builder<GLaunchData_launch_rocket, GLaunchData_launch_rocketBuilder> {
  _$GLaunchData_launch_rocket? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GLaunchData_launch_rocket_rocketBuilder? _rocket;
  GLaunchData_launch_rocket_rocketBuilder get rocket =>
      _$this._rocket ??= new GLaunchData_launch_rocket_rocketBuilder();
  set rocket(GLaunchData_launch_rocket_rocketBuilder? rocket) =>
      _$this._rocket = rocket;

  GLaunchData_launch_rocketBuilder() {
    GLaunchData_launch_rocket._initializeBuilder(this);
  }

  GLaunchData_launch_rocketBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _rocket = $v.rocket?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLaunchData_launch_rocket other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLaunchData_launch_rocket;
  }

  @override
  void update(void Function(GLaunchData_launch_rocketBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLaunchData_launch_rocket build() => _build();

  _$GLaunchData_launch_rocket _build() {
    _$GLaunchData_launch_rocket _$result;
    try {
      _$result = _$v ??
          new _$GLaunchData_launch_rocket._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GLaunchData_launch_rocket', 'G__typename'),
              rocket: _rocket?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rocket';
        _rocket?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GLaunchData_launch_rocket', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLaunchData_launch_rocket_rocket
    extends GLaunchData_launch_rocket_rocket {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final int? stages;
  @override
  final String? type;
  @override
  final DateTime? first_flight;
  @override
  final String? country;
  @override
  final String? description;
  @override
  final String? company;
  @override
  final bool? active;

  factory _$GLaunchData_launch_rocket_rocket(
          [void Function(GLaunchData_launch_rocket_rocketBuilder)? updates]) =>
      (new GLaunchData_launch_rocket_rocketBuilder()..update(updates))._build();

  _$GLaunchData_launch_rocket_rocket._(
      {required this.G__typename,
      this.id,
      this.name,
      this.stages,
      this.type,
      this.first_flight,
      this.country,
      this.description,
      this.company,
      this.active})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLaunchData_launch_rocket_rocket', 'G__typename');
  }

  @override
  GLaunchData_launch_rocket_rocket rebuild(
          void Function(GLaunchData_launch_rocket_rocketBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLaunchData_launch_rocket_rocketBuilder toBuilder() =>
      new GLaunchData_launch_rocket_rocketBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLaunchData_launch_rocket_rocket &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        stages == other.stages &&
        type == other.type &&
        first_flight == other.first_flight &&
        country == other.country &&
        description == other.description &&
        company == other.company &&
        active == other.active;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, stages.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, first_flight.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, company.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLaunchData_launch_rocket_rocket')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('stages', stages)
          ..add('type', type)
          ..add('first_flight', first_flight)
          ..add('country', country)
          ..add('description', description)
          ..add('company', company)
          ..add('active', active))
        .toString();
  }
}

class GLaunchData_launch_rocket_rocketBuilder
    implements
        Builder<GLaunchData_launch_rocket_rocket,
            GLaunchData_launch_rocket_rocketBuilder> {
  _$GLaunchData_launch_rocket_rocket? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _stages;
  int? get stages => _$this._stages;
  set stages(int? stages) => _$this._stages = stages;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  DateTime? _first_flight;
  DateTime? get first_flight => _$this._first_flight;
  set first_flight(DateTime? first_flight) =>
      _$this._first_flight = first_flight;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _company;
  String? get company => _$this._company;
  set company(String? company) => _$this._company = company;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  GLaunchData_launch_rocket_rocketBuilder() {
    GLaunchData_launch_rocket_rocket._initializeBuilder(this);
  }

  GLaunchData_launch_rocket_rocketBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _stages = $v.stages;
      _type = $v.type;
      _first_flight = $v.first_flight;
      _country = $v.country;
      _description = $v.description;
      _company = $v.company;
      _active = $v.active;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLaunchData_launch_rocket_rocket other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLaunchData_launch_rocket_rocket;
  }

  @override
  void update(void Function(GLaunchData_launch_rocket_rocketBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLaunchData_launch_rocket_rocket build() => _build();

  _$GLaunchData_launch_rocket_rocket _build() {
    final _$result = _$v ??
        new _$GLaunchData_launch_rocket_rocket._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GLaunchData_launch_rocket_rocket', 'G__typename'),
            id: id,
            name: name,
            stages: stages,
            type: type,
            first_flight: first_flight,
            country: country,
            description: description,
            company: company,
            active: active);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
