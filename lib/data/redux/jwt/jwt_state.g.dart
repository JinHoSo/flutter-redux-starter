// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwt_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<JwtState> _$jwtStateSerializer = new _$JwtStateSerializer();

class _$JwtStateSerializer implements StructuredSerializer<JwtState> {
  @override
  final Iterable<Type> types = const [JwtState, _$JwtState];
  @override
  final String wireName = 'JwtState';

  @override
  Iterable<Object> serialize(Serializers serializers, JwtState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.token != null) {
      result
        ..add('token')
        ..add(serializers.serialize(object.token,
            specifiedType: const FullType(JwtToken)));
    }
    if (object.error != null) {
      result
        ..add('error')
        ..add(serializers.serialize(object.error,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  JwtState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JwtStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'token':
          result.token.replace(serializers.deserialize(value,
              specifiedType: const FullType(JwtToken)) as JwtToken);
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$JwtState extends JwtState {
  @override
  final JwtToken token;
  @override
  final String error;

  factory _$JwtState([void Function(JwtStateBuilder) updates]) =>
      (new JwtStateBuilder()..update(updates)).build();

  _$JwtState._({this.token, this.error}) : super._();

  @override
  JwtState rebuild(void Function(JwtStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JwtStateBuilder toBuilder() => new JwtStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JwtState && token == other.token && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, token.hashCode), error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('JwtState')
          ..add('token', token)
          ..add('error', error))
        .toString();
  }
}

class JwtStateBuilder implements Builder<JwtState, JwtStateBuilder> {
  _$JwtState _$v;

  JwtTokenBuilder _token;
  JwtTokenBuilder get token => _$this._token ??= new JwtTokenBuilder();
  set token(JwtTokenBuilder token) => _$this._token = token;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  JwtStateBuilder();

  JwtStateBuilder get _$this {
    if (_$v != null) {
      _token = _$v.token?.toBuilder();
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JwtState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$JwtState;
  }

  @override
  void update(void Function(JwtStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$JwtState build() {
    _$JwtState _$result;
    try {
      _$result = _$v ?? new _$JwtState._(token: _token?.build(), error: error);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'token';
        _token?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'JwtState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
