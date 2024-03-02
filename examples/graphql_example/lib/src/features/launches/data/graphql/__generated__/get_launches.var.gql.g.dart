// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_launches.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLaunchesVars> _$gLaunchesVarsSerializer =
    new _$GLaunchesVarsSerializer();

class _$GLaunchesVarsSerializer implements StructuredSerializer<GLaunchesVars> {
  @override
  final Iterable<Type> types = const [GLaunchesVars, _$GLaunchesVars];
  @override
  final String wireName = 'GLaunchesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GLaunchesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GLaunchesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GLaunchesVarsBuilder().build();
  }
}

class _$GLaunchesVars extends GLaunchesVars {
  factory _$GLaunchesVars([void Function(GLaunchesVarsBuilder)? updates]) =>
      (new GLaunchesVarsBuilder()..update(updates))._build();

  _$GLaunchesVars._() : super._();

  @override
  GLaunchesVars rebuild(void Function(GLaunchesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLaunchesVarsBuilder toBuilder() => new GLaunchesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLaunchesVars;
  }

  @override
  int get hashCode {
    return 598002562;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GLaunchesVars').toString();
  }
}

class GLaunchesVarsBuilder
    implements Builder<GLaunchesVars, GLaunchesVarsBuilder> {
  _$GLaunchesVars? _$v;

  GLaunchesVarsBuilder();

  @override
  void replace(GLaunchesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLaunchesVars;
  }

  @override
  void update(void Function(GLaunchesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GLaunchesVars build() => _build();

  _$GLaunchesVars _build() {
    final _$result = _$v ?? new _$GLaunchesVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
