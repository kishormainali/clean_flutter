// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_launches.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLaunchesData> _$gLaunchesDataSerializer =
    new _$GLaunchesDataSerializer();
Serializer<GLaunchesData_launches> _$gLaunchesDataLaunchesSerializer =
    new _$GLaunchesData_launchesSerializer();
Serializer<GLaunchesData_launches_launch_site>
    _$gLaunchesDataLaunchesLaunchSiteSerializer =
    new _$GLaunchesData_launches_launch_siteSerializer();
Serializer<GLaunchesData_launches_rocket>
    _$gLaunchesDataLaunchesRocketSerializer =
    new _$GLaunchesData_launches_rocketSerializer();
Serializer<GLaunchesData_launches_rocket_rocket>
    _$gLaunchesDataLaunchesRocketRocketSerializer =
    new _$GLaunchesData_launches_rocket_rocketSerializer();

class _$GLaunchesDataSerializer implements StructuredSerializer<GLaunchesData> {
  @override
  final Iterable<Type> types = const [GLaunchesData, _$GLaunchesData];
  @override
  final String wireName = 'GLaunchesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLaunchesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.launches;
    if (value != null) {
      result
        ..add('launches')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(GLaunchesData_launches)])));
    }
    return result;
  }

  @override
  GLaunchesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLaunchesDataBuilder();

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
        case 'launches':
          result.launches.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(GLaunchesData_launches)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GLaunchesData_launchesSerializer
    implements StructuredSerializer<GLaunchesData_launches> {
  @override
  final Iterable<Type> types = const [
    GLaunchesData_launches,
    _$GLaunchesData_launches
  ];
  @override
  final String wireName = 'GLaunchesData_launches';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLaunchesData_launches object,
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
            specifiedType: const FullType(GLaunchesData_launches_launch_site)));
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
            specifiedType: const FullType(GLaunchesData_launches_rocket)));
    }
    return result;
  }

  @override
  GLaunchesData_launches deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLaunchesData_launchesBuilder();

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
                      const FullType(GLaunchesData_launches_launch_site))!
              as GLaunchesData_launches_launch_site);
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
                  specifiedType: const FullType(GLaunchesData_launches_rocket))!
              as GLaunchesData_launches_rocket);
          break;
      }
    }

    return result.build();
  }
}

class _$GLaunchesData_launches_launch_siteSerializer
    implements StructuredSerializer<GLaunchesData_launches_launch_site> {
  @override
  final Iterable<Type> types = const [
    GLaunchesData_launches_launch_site,
    _$GLaunchesData_launches_launch_site
  ];
  @override
  final String wireName = 'GLaunchesData_launches_launch_site';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLaunchesData_launches_launch_site object,
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
  GLaunchesData_launches_launch_site deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLaunchesData_launches_launch_siteBuilder();

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

class _$GLaunchesData_launches_rocketSerializer
    implements StructuredSerializer<GLaunchesData_launches_rocket> {
  @override
  final Iterable<Type> types = const [
    GLaunchesData_launches_rocket,
    _$GLaunchesData_launches_rocket
  ];
  @override
  final String wireName = 'GLaunchesData_launches_rocket';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLaunchesData_launches_rocket object,
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
            specifiedType:
                const FullType(GLaunchesData_launches_rocket_rocket)));
    }
    return result;
  }

  @override
  GLaunchesData_launches_rocket deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLaunchesData_launches_rocketBuilder();

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
                      const FullType(GLaunchesData_launches_rocket_rocket))!
              as GLaunchesData_launches_rocket_rocket);
          break;
      }
    }

    return result.build();
  }
}

class _$GLaunchesData_launches_rocket_rocketSerializer
    implements StructuredSerializer<GLaunchesData_launches_rocket_rocket> {
  @override
  final Iterable<Type> types = const [
    GLaunchesData_launches_rocket_rocket,
    _$GLaunchesData_launches_rocket_rocket
  ];
  @override
  final String wireName = 'GLaunchesData_launches_rocket_rocket';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLaunchesData_launches_rocket_rocket object,
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
  GLaunchesData_launches_rocket_rocket deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLaunchesData_launches_rocket_rocketBuilder();

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

class _$GLaunchesData extends GLaunchesData {
  @override
  final String G__typename;
  @override
  final BuiltList<GLaunchesData_launches?>? launches;

  factory _$GLaunchesData([void Function(GLaunchesDataBuilder)? updates]) =>
      (new GLaunchesDataBuilder()..update(updates))._build();

  _$GLaunchesData._({required this.G__typename, this.launches}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLaunchesData', 'G__typename');
  }

  @override
  GLaunchesData rebuild(void Function(GLaunchesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLaunchesDataBuilder toBuilder() => new GLaunchesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLaunchesData &&
        G__typename == other.G__typename &&
        launches == other.launches;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, G__typename.hashCode);
    _$hash = $jc(_$hash, launches.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLaunchesData')
          ..add('G__typename', G__typename)
          ..add('launches', launches))
        .toString();
  }
}

class GLaunchesDataBuilder
    implements Builder<GLaunchesData, GLaunchesDataBuilder> {
  _$GLaunchesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GLaunchesData_launches?>? _launches;
  ListBuilder<GLaunchesData_launches?> get launches =>
      _$this._launches ??= new ListBuilder<GLaunchesData_launches?>();
  set launches(ListBuilder<GLaunchesData_launches?>? launches) =>
      _$this._launches = launches;

  GLaunchesDataBuilder() {
    GLaunchesData._initializeBuilder(this);
  }

  GLaunchesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _launches = $v.launches?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLaunchesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLaunchesData;
  }

  @override
  void update(void Function(GLaunchesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLaunchesData build() => _build();

  _$GLaunchesData _build() {
    _$GLaunchesData _$result;
    try {
      _$result = _$v ??
          new _$GLaunchesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GLaunchesData', 'G__typename'),
              launches: _launches?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'launches';
        _launches?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GLaunchesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLaunchesData_launches extends GLaunchesData_launches {
  @override
  final String G__typename;
  @override
  final String? id;
  @override
  final String? details;
  @override
  final DateTime? launch_date_unix;
  @override
  final GLaunchesData_launches_launch_site? launch_site;
  @override
  final String? mission_name;
  @override
  final bool? upcoming;
  @override
  final bool? launch_success;
  @override
  final GLaunchesData_launches_rocket? rocket;

  factory _$GLaunchesData_launches(
          [void Function(GLaunchesData_launchesBuilder)? updates]) =>
      (new GLaunchesData_launchesBuilder()..update(updates))._build();

  _$GLaunchesData_launches._(
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
        G__typename, r'GLaunchesData_launches', 'G__typename');
  }

  @override
  GLaunchesData_launches rebuild(
          void Function(GLaunchesData_launchesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLaunchesData_launchesBuilder toBuilder() =>
      new GLaunchesData_launchesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLaunchesData_launches &&
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
    return (newBuiltValueToStringHelper(r'GLaunchesData_launches')
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

class GLaunchesData_launchesBuilder
    implements Builder<GLaunchesData_launches, GLaunchesData_launchesBuilder> {
  _$GLaunchesData_launches? _$v;

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

  GLaunchesData_launches_launch_siteBuilder? _launch_site;
  GLaunchesData_launches_launch_siteBuilder get launch_site =>
      _$this._launch_site ??= new GLaunchesData_launches_launch_siteBuilder();
  set launch_site(GLaunchesData_launches_launch_siteBuilder? launch_site) =>
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

  GLaunchesData_launches_rocketBuilder? _rocket;
  GLaunchesData_launches_rocketBuilder get rocket =>
      _$this._rocket ??= new GLaunchesData_launches_rocketBuilder();
  set rocket(GLaunchesData_launches_rocketBuilder? rocket) =>
      _$this._rocket = rocket;

  GLaunchesData_launchesBuilder() {
    GLaunchesData_launches._initializeBuilder(this);
  }

  GLaunchesData_launchesBuilder get _$this {
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
  void replace(GLaunchesData_launches other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLaunchesData_launches;
  }

  @override
  void update(void Function(GLaunchesData_launchesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLaunchesData_launches build() => _build();

  _$GLaunchesData_launches _build() {
    _$GLaunchesData_launches _$result;
    try {
      _$result = _$v ??
          new _$GLaunchesData_launches._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GLaunchesData_launches', 'G__typename'),
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
            r'GLaunchesData_launches', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLaunchesData_launches_launch_site
    extends GLaunchesData_launches_launch_site {
  @override
  final String G__typename;
  @override
  final String? site_id;
  @override
  final String? site_name;
  @override
  final String? site_name_long;

  factory _$GLaunchesData_launches_launch_site(
          [void Function(GLaunchesData_launches_launch_siteBuilder)?
              updates]) =>
      (new GLaunchesData_launches_launch_siteBuilder()..update(updates))
          ._build();

  _$GLaunchesData_launches_launch_site._(
      {required this.G__typename,
      this.site_id,
      this.site_name,
      this.site_name_long})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLaunchesData_launches_launch_site', 'G__typename');
  }

  @override
  GLaunchesData_launches_launch_site rebuild(
          void Function(GLaunchesData_launches_launch_siteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLaunchesData_launches_launch_siteBuilder toBuilder() =>
      new GLaunchesData_launches_launch_siteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLaunchesData_launches_launch_site &&
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
    return (newBuiltValueToStringHelper(r'GLaunchesData_launches_launch_site')
          ..add('G__typename', G__typename)
          ..add('site_id', site_id)
          ..add('site_name', site_name)
          ..add('site_name_long', site_name_long))
        .toString();
  }
}

class GLaunchesData_launches_launch_siteBuilder
    implements
        Builder<GLaunchesData_launches_launch_site,
            GLaunchesData_launches_launch_siteBuilder> {
  _$GLaunchesData_launches_launch_site? _$v;

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

  GLaunchesData_launches_launch_siteBuilder() {
    GLaunchesData_launches_launch_site._initializeBuilder(this);
  }

  GLaunchesData_launches_launch_siteBuilder get _$this {
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
  void replace(GLaunchesData_launches_launch_site other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLaunchesData_launches_launch_site;
  }

  @override
  void update(
      void Function(GLaunchesData_launches_launch_siteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLaunchesData_launches_launch_site build() => _build();

  _$GLaunchesData_launches_launch_site _build() {
    final _$result = _$v ??
        new _$GLaunchesData_launches_launch_site._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GLaunchesData_launches_launch_site', 'G__typename'),
            site_id: site_id,
            site_name: site_name,
            site_name_long: site_name_long);
    replace(_$result);
    return _$result;
  }
}

class _$GLaunchesData_launches_rocket extends GLaunchesData_launches_rocket {
  @override
  final String G__typename;
  @override
  final GLaunchesData_launches_rocket_rocket? rocket;

  factory _$GLaunchesData_launches_rocket(
          [void Function(GLaunchesData_launches_rocketBuilder)? updates]) =>
      (new GLaunchesData_launches_rocketBuilder()..update(updates))._build();

  _$GLaunchesData_launches_rocket._({required this.G__typename, this.rocket})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, r'GLaunchesData_launches_rocket', 'G__typename');
  }

  @override
  GLaunchesData_launches_rocket rebuild(
          void Function(GLaunchesData_launches_rocketBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLaunchesData_launches_rocketBuilder toBuilder() =>
      new GLaunchesData_launches_rocketBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLaunchesData_launches_rocket &&
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
    return (newBuiltValueToStringHelper(r'GLaunchesData_launches_rocket')
          ..add('G__typename', G__typename)
          ..add('rocket', rocket))
        .toString();
  }
}

class GLaunchesData_launches_rocketBuilder
    implements
        Builder<GLaunchesData_launches_rocket,
            GLaunchesData_launches_rocketBuilder> {
  _$GLaunchesData_launches_rocket? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GLaunchesData_launches_rocket_rocketBuilder? _rocket;
  GLaunchesData_launches_rocket_rocketBuilder get rocket =>
      _$this._rocket ??= new GLaunchesData_launches_rocket_rocketBuilder();
  set rocket(GLaunchesData_launches_rocket_rocketBuilder? rocket) =>
      _$this._rocket = rocket;

  GLaunchesData_launches_rocketBuilder() {
    GLaunchesData_launches_rocket._initializeBuilder(this);
  }

  GLaunchesData_launches_rocketBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _rocket = $v.rocket?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLaunchesData_launches_rocket other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLaunchesData_launches_rocket;
  }

  @override
  void update(void Function(GLaunchesData_launches_rocketBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLaunchesData_launches_rocket build() => _build();

  _$GLaunchesData_launches_rocket _build() {
    _$GLaunchesData_launches_rocket _$result;
    try {
      _$result = _$v ??
          new _$GLaunchesData_launches_rocket._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, r'GLaunchesData_launches_rocket', 'G__typename'),
              rocket: _rocket?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rocket';
        _rocket?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GLaunchesData_launches_rocket', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GLaunchesData_launches_rocket_rocket
    extends GLaunchesData_launches_rocket_rocket {
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

  factory _$GLaunchesData_launches_rocket_rocket(
          [void Function(GLaunchesData_launches_rocket_rocketBuilder)?
              updates]) =>
      (new GLaunchesData_launches_rocket_rocketBuilder()..update(updates))
          ._build();

  _$GLaunchesData_launches_rocket_rocket._(
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
        G__typename, r'GLaunchesData_launches_rocket_rocket', 'G__typename');
  }

  @override
  GLaunchesData_launches_rocket_rocket rebuild(
          void Function(GLaunchesData_launches_rocket_rocketBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLaunchesData_launches_rocket_rocketBuilder toBuilder() =>
      new GLaunchesData_launches_rocket_rocketBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLaunchesData_launches_rocket_rocket &&
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
    return (newBuiltValueToStringHelper(r'GLaunchesData_launches_rocket_rocket')
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

class GLaunchesData_launches_rocket_rocketBuilder
    implements
        Builder<GLaunchesData_launches_rocket_rocket,
            GLaunchesData_launches_rocket_rocketBuilder> {
  _$GLaunchesData_launches_rocket_rocket? _$v;

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

  GLaunchesData_launches_rocket_rocketBuilder() {
    GLaunchesData_launches_rocket_rocket._initializeBuilder(this);
  }

  GLaunchesData_launches_rocket_rocketBuilder get _$this {
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
  void replace(GLaunchesData_launches_rocket_rocket other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLaunchesData_launches_rocket_rocket;
  }

  @override
  void update(
      void Function(GLaunchesData_launches_rocket_rocketBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLaunchesData_launches_rocket_rocket build() => _build();

  _$GLaunchesData_launches_rocket_rocket _build() {
    final _$result = _$v ??
        new _$GLaunchesData_launches_rocket_rocket._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                r'GLaunchesData_launches_rocket_rocket', 'G__typename'),
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
