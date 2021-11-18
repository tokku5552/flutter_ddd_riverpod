// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoItem _$$_TodoItemFromJson(Map<String, dynamic> json) => _$_TodoItem(
      id: const TodoIdConverter().fromJson(json['id'] as String),
      title: const TitleConverter().fromJson(json['title'] as String),
      detail: const DetailConverter().fromJson(json['detail'] as String),
      isDone: json['isDone'] as bool? ?? false,
      createdAt:
          const DateTimeConverter().fromJson(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_TodoItemToJson(_$_TodoItem instance) =>
    <String, dynamic>{
      'id': const TodoIdConverter().toJson(instance.id),
      'title': const TitleConverter().toJson(instance.title),
      'detail': const DetailConverter().toJson(instance.detail),
      'isDone': instance.isDone,
      'createdAt': const DateTimeConverter().toJson(instance.createdAt),
    };
