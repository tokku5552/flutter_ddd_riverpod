// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodoListStateTearOff {
  const _$TodoListStateTearOff();

  _TodoListState call(
      {bool isFetching = false, List<TodoItem> todoList = const <TodoItem>[]}) {
    return _TodoListState(
      isFetching: isFetching,
      todoList: todoList,
    );
  }
}

/// @nodoc
const $TodoListState = _$TodoListStateTearOff();

/// @nodoc
mixin _$TodoListState {
  bool get isFetching => throw _privateConstructorUsedError;
  List<TodoItem> get todoList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TodoListStateCopyWith<TodoListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoListStateCopyWith<$Res> {
  factory $TodoListStateCopyWith(
          TodoListState value, $Res Function(TodoListState) then) =
      _$TodoListStateCopyWithImpl<$Res>;
  $Res call({bool isFetching, List<TodoItem> todoList});
}

/// @nodoc
class _$TodoListStateCopyWithImpl<$Res>
    implements $TodoListStateCopyWith<$Res> {
  _$TodoListStateCopyWithImpl(this._value, this._then);

  final TodoListState _value;
  // ignore: unused_field
  final $Res Function(TodoListState) _then;

  @override
  $Res call({
    Object? isFetching = freezed,
    Object? todoList = freezed,
  }) {
    return _then(_value.copyWith(
      isFetching: isFetching == freezed
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      todoList: todoList == freezed
          ? _value.todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<TodoItem>,
    ));
  }
}

/// @nodoc
abstract class _$TodoListStateCopyWith<$Res>
    implements $TodoListStateCopyWith<$Res> {
  factory _$TodoListStateCopyWith(
          _TodoListState value, $Res Function(_TodoListState) then) =
      __$TodoListStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isFetching, List<TodoItem> todoList});
}

/// @nodoc
class __$TodoListStateCopyWithImpl<$Res>
    extends _$TodoListStateCopyWithImpl<$Res>
    implements _$TodoListStateCopyWith<$Res> {
  __$TodoListStateCopyWithImpl(
      _TodoListState _value, $Res Function(_TodoListState) _then)
      : super(_value, (v) => _then(v as _TodoListState));

  @override
  _TodoListState get _value => super._value as _TodoListState;

  @override
  $Res call({
    Object? isFetching = freezed,
    Object? todoList = freezed,
  }) {
    return _then(_TodoListState(
      isFetching: isFetching == freezed
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      todoList: todoList == freezed
          ? _value.todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<TodoItem>,
    ));
  }
}

/// @nodoc

class _$_TodoListState implements _TodoListState {
  const _$_TodoListState(
      {this.isFetching = false, this.todoList = const <TodoItem>[]});

  @JsonKey(defaultValue: false)
  @override
  final bool isFetching;
  @JsonKey(defaultValue: const <TodoItem>[])
  @override
  final List<TodoItem> todoList;

  @override
  String toString() {
    return 'TodoListState(isFetching: $isFetching, todoList: $todoList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodoListState &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            const DeepCollectionEquality().equals(other.todoList, todoList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isFetching, const DeepCollectionEquality().hash(todoList));

  @JsonKey(ignore: true)
  @override
  _$TodoListStateCopyWith<_TodoListState> get copyWith =>
      __$TodoListStateCopyWithImpl<_TodoListState>(this, _$identity);
}

abstract class _TodoListState implements TodoListState {
  const factory _TodoListState({bool isFetching, List<TodoItem> todoList}) =
      _$_TodoListState;

  @override
  bool get isFetching;
  @override
  List<TodoItem> get todoList;
  @override
  @JsonKey(ignore: true)
  _$TodoListStateCopyWith<_TodoListState> get copyWith =>
      throw _privateConstructorUsedError;
}
