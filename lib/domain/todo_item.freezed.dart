// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoItem _$TodoItemFromJson(Map<String, dynamic> json) {
  return _TodoItem.fromJson(json);
}

/// @nodoc
class _$TodoItemTearOff {
  const _$TodoItemTearOff();

  _TodoItem call(
      {@TodoIdConverter() required TodoId id,
      @TitleConverter() required Title title,
      @DetailConverter() required Detail detail,
      bool isDone = false,
      @DateTimeConverter() required DateTime createdAt}) {
    return _TodoItem(
      id: id,
      title: title,
      detail: detail,
      isDone: isDone,
      createdAt: createdAt,
    );
  }

  TodoItem fromJson(Map<String, Object?> json) {
    return TodoItem.fromJson(json);
  }
}

/// @nodoc
const $TodoItem = _$TodoItemTearOff();

/// @nodoc
mixin _$TodoItem {
  @TodoIdConverter()
  TodoId get id => throw _privateConstructorUsedError;
  @TitleConverter()
  Title get title => throw _privateConstructorUsedError;
  @DetailConverter()
  Detail get detail => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoItemCopyWith<TodoItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoItemCopyWith<$Res> {
  factory $TodoItemCopyWith(TodoItem value, $Res Function(TodoItem) then) =
      _$TodoItemCopyWithImpl<$Res>;
  $Res call(
      {@TodoIdConverter() TodoId id,
      @TitleConverter() Title title,
      @DetailConverter() Detail detail,
      bool isDone,
      @DateTimeConverter() DateTime createdAt});

  $TodoIdCopyWith<$Res> get id;
  $TitleCopyWith<$Res> get title;
  $DetailCopyWith<$Res> get detail;
}

/// @nodoc
class _$TodoItemCopyWithImpl<$Res> implements $TodoItemCopyWith<$Res> {
  _$TodoItemCopyWithImpl(this._value, this._then);

  final TodoItem _value;
  // ignore: unused_field
  final $Res Function(TodoItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? detail = freezed,
    Object? isDone = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TodoId,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Title,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Detail,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $TodoIdCopyWith<$Res> get id {
    return $TodoIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
    });
  }

  @override
  $TitleCopyWith<$Res> get title {
    return $TitleCopyWith<$Res>(_value.title, (value) {
      return _then(_value.copyWith(title: value));
    });
  }

  @override
  $DetailCopyWith<$Res> get detail {
    return $DetailCopyWith<$Res>(_value.detail, (value) {
      return _then(_value.copyWith(detail: value));
    });
  }
}

/// @nodoc
abstract class _$TodoItemCopyWith<$Res> implements $TodoItemCopyWith<$Res> {
  factory _$TodoItemCopyWith(_TodoItem value, $Res Function(_TodoItem) then) =
      __$TodoItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@TodoIdConverter() TodoId id,
      @TitleConverter() Title title,
      @DetailConverter() Detail detail,
      bool isDone,
      @DateTimeConverter() DateTime createdAt});

  @override
  $TodoIdCopyWith<$Res> get id;
  @override
  $TitleCopyWith<$Res> get title;
  @override
  $DetailCopyWith<$Res> get detail;
}

/// @nodoc
class __$TodoItemCopyWithImpl<$Res> extends _$TodoItemCopyWithImpl<$Res>
    implements _$TodoItemCopyWith<$Res> {
  __$TodoItemCopyWithImpl(_TodoItem _value, $Res Function(_TodoItem) _then)
      : super(_value, (v) => _then(v as _TodoItem));

  @override
  _TodoItem get _value => super._value as _TodoItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? detail = freezed,
    Object? isDone = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_TodoItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as TodoId,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Title,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as Detail,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodoItem extends _TodoItem {
  _$_TodoItem(
      {@TodoIdConverter() required this.id,
      @TitleConverter() required this.title,
      @DetailConverter() required this.detail,
      this.isDone = false,
      @DateTimeConverter() required this.createdAt})
      : super._();

  factory _$_TodoItem.fromJson(Map<String, dynamic> json) =>
      _$$_TodoItemFromJson(json);

  @override
  @TodoIdConverter()
  final TodoId id;
  @override
  @TitleConverter()
  final Title title;
  @override
  @DetailConverter()
  final Detail detail;
  @JsonKey(defaultValue: false)
  @override
  final bool isDone;
  @override
  @DateTimeConverter()
  final DateTime createdAt;

  @override
  String toString() {
    return 'TodoItem(id: $id, title: $title, detail: $detail, isDone: $isDone, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodoItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, detail, isDone, createdAt);

  @JsonKey(ignore: true)
  @override
  _$TodoItemCopyWith<_TodoItem> get copyWith =>
      __$TodoItemCopyWithImpl<_TodoItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoItemToJson(this);
  }
}

abstract class _TodoItem extends TodoItem {
  factory _TodoItem(
      {@TodoIdConverter() required TodoId id,
      @TitleConverter() required Title title,
      @DetailConverter() required Detail detail,
      bool isDone,
      @DateTimeConverter() required DateTime createdAt}) = _$_TodoItem;
  _TodoItem._() : super._();

  factory _TodoItem.fromJson(Map<String, dynamic> json) = _$_TodoItem.fromJson;

  @override
  @TodoIdConverter()
  TodoId get id;
  @override
  @TitleConverter()
  Title get title;
  @override
  @DetailConverter()
  Detail get detail;
  @override
  bool get isDone;
  @override
  @DateTimeConverter()
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$TodoItemCopyWith<_TodoItem> get copyWith =>
      throw _privateConstructorUsedError;
}
