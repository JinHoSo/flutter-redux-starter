// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwt_token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<JwtToken> _$jwtTokenSerializer = new _$JwtTokenSerializer();

class _$JwtTokenSerializer implements StructuredSerializer<JwtToken> {
  @override
  final Iterable<Type> types = const [JwtToken, _$JwtToken];
  @override
  final String wireName = 'JwtToken';

  @override
  Iterable<Object> serialize(Serializers serializers, JwtToken object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.accessToken != null) {
      result
        ..add('access_token')
        ..add(serializers.serialize(object.accessToken,
            specifiedType: const FullType(String)));
    }
    if (object.refreshToken != null) {
      result
        ..add('refresh_token')
        ..add(serializers.serialize(object.refreshToken,
            specifiedType: const FullType(String)));
    }
    if (object.expiresIn != null) {
      result
        ..add('expires_in')
        ..add(serializers.serialize(object.expiresIn,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  JwtToken deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JwtTokenBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'access_token':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'refresh_token':
          result.refreshToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'expires_in':
          result.expiresIn = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$JwtToken extends JwtToken {
  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  final int expiresIn;

  factory _$JwtToken([void Function(JwtTokenBuilder) updates]) =>
      (new JwtTokenBuilder()..update(updates)).build();

  _$JwtToken._({this.accessToken, this.refreshToken, this.expiresIn})
      : super._();

  @override
  JwtToken rebuild(void Function(JwtTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JwtTokenBuilder toBuilder() => new JwtTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JwtToken &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken &&
        expiresIn == other.expiresIn;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, accessToken.hashCode), refreshToken.hashCode),
        expiresIn.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('JwtToken')
          ..add('accessToken', accessToken)
          ..add('refreshToken', refreshToken)
          ..add('expiresIn', expiresIn))
        .toString();
  }
}

class JwtTokenBuilder implements Builder<JwtToken, JwtTokenBuilder> {
  _$JwtToken _$v;

  String _accessToken;
  String get accessToken => _$this._accessToken;
  set accessToken(String accessToken) => _$this._accessToken = accessToken;

  String _refreshToken;
  String get refreshToken => _$this._refreshToken;
  set refreshToken(String refreshToken) => _$this._refreshToken = refreshToken;

  int _expiresIn;
  int get expiresIn => _$this._expiresIn;
  set expiresIn(int expiresIn) => _$this._expiresIn = expiresIn;

  JwtTokenBuilder();

  JwtTokenBuilder get _$this {
    if (_$v != null) {
      _accessToken = _$v.accessToken;
      _refreshToken = _$v.refreshToken;
      _expiresIn = _$v.expiresIn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JwtToken other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$JwtToken;
  }

  @override
  void update(void Function(JwtTokenBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$JwtToken build() {
    final _$result = _$v ??
        new _$JwtToken._(
            accessToken: accessToken,
            refreshToken: refreshToken,
            expiresIn: expiresIn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
