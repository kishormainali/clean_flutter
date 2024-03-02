// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_launch_details.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLaunchVars> _$gLaunchVarsSerializer = new _$GLaunchVarsSerializer();

class _$GLaunchVarsSerializer implements StructuredSerializer<GLaunchVars> {
  @override
  final Iterable<Type> types = const [GLaunchVars, _$GLaunchVars];
  @override
  final String wireName = 'GLaunchVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLaunchVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'launchId',
      serializers.serialize(object.launchId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLaunchVars deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLaunchVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'launchId':
          result.launchId = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GLaunchVars extends GLaunchVars {
  @override
  final String launchId;

  factory _$GLaunchVars([void Function(GLaunchVarsBuilder)? updates]) =>
      (new GLaunchVarsBuilder()..update(updates))._build();

  _$GLaunchVars._({required this.launchId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(launchId, r'GLaunchVars', 'launchId');
  }

  @override
  GLaunchVars rebuild(void Function(GLaunchVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLaunchVarsBuilder toBuilder() => new GLaunchVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLaunchVars && launchId == other.launchId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, launchId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GLaunchVars')
          ..add('launchId', launchId))
        .toString();
  }
}

class GLaunchVarsBuilder implements Builder<GLaunchVars, GLaunchVarsBuilder> {
  _$GLaunchVars? _$v;

  String? _launchId;
  String? get launchId => _$this._launchId;
  set launchId(String? launchId) => _$this._launchId = launchId;

  GLaunchVarsBuilder();

  GLaunchVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _launchId = $v.launchId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLaunchVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLaunchVars;
  }

  @override
  void update(void Function(GLaunchVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLaunchVars build() => _build();

  _$GLaunchVars _build() {
    final _$result = _$v ??
        new _$GLaunchVars._(
            launchId: BuiltValueNullFieldError.checkNotNull(
                launchId, r'GLaunchVars', 'launchId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
