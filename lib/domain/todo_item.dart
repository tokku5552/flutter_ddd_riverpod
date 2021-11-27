import 'package:flutter_ddd_riverpod/common/date_time_converter.dart';
import 'package:flutter_ddd_riverpod/domain/value/detail.dart';
import 'package:flutter_ddd_riverpod/domain/value/title.dart';
import 'package:flutter_ddd_riverpod/domain/value/todo_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_item.freezed.dart';
part 'todo_item.g.dart';

@freezed
class TodoItem with _$TodoItem {
  factory TodoItem({
    @TodoIdConverter() required TodoId id,
    @TitleConverter() required Title title,
    @DetailConverter() required Detail detail,
    @Default(false) bool isDone,
    @DateTimeConverter() required DateTime createdAt,
  }) = _TodoItem;

  factory TodoItem.fromJson(Map<String, dynamic> json) =>
      _$TodoItemFromJson(json);
}
