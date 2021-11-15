// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DetailTearOff {
  const _$DetailTearOff();

  _Detail call(String value) {
    return _Detail(
      value,
    );
  }
}

/// @nodoc
const $Detail = _$DetailTearOff();

/// @nodoc
mixin _$Detail {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailCopyWith<Detail> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailCopyWith<$Res> {
  factory $DetailCopyWith(Detail value, $Res Function(Detail) then) =
      _$DetailCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$DetailCopyWithImpl<$Res> implements $DetailCopyWith<$Res> {
  _$DetailCopyWithImpl(this._value, this._then);

  final Detail _value;
  // ignore: unused_field
  final $Res Function(Detail) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DetailCopyWith<$Res> implements $DetailCopyWith<$Res> {
  factory _$DetailCopyWith(_Detail value, $Res Function(_Detail) then) =
      __$DetailCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$DetailCopyWithImpl<$Res> extends _$DetailCopyWithImpl<$Res>
    implements _$DetailCopyWith<$Res> {
  __$DetailCopyWithImpl(_Detail _value, $Res Function(_Detail) _then)
      : super(_value, (v) => _then(v as _Detail));

  @override
  _Detail get _value => super._value as _Detail;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_Detail(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Detail implements _Detail {
  const _$_Detail(this.value) : assert(value.length < 120);

  @override
  final String value;

  @override
  String toString() {
    return 'Detail(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Detail &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  _$DetailCopyWith<_Detail> get copyWith =>
      __$DetailCopyWithImpl<_Detail>(this, _$identity);
}

abstract class _Detail implements Detail {
  const factory _Detail(String value) = _$_Detail;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$DetailCopyWith<_Detail> get copyWith => throw _privateConstructorUsedError;
}
