import 'package:flutter_ddd_riverpod/domain/todo_item.dart';
import 'package:flutter_ddd_riverpod/domain/value/todo_id.dart';
import 'package:flutter_ddd_riverpod/infrastructure/todo_list_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'dart:math';

import 'package:mockito/mockito.dart';

ProviderContainer override() {
  return ProviderContainer(overrides: [
    todoListRepository.overrideWithProvider(
      Provider((ref) => TodoListRepositoryMem()),
    )
  ]);
}

class TodoListRepositoryMem extends Mock implements TodoListRepository {
  // final Map<String, TodoItem> _data = {};
  //
  // @override
  // Future<void> disposeStream() async {
  //   // TODO: implement disposeStream
  // }
  //
  // @override
  // void subscribeStream(
  //   void Function(List<TodoItem>) onCompleted, {
  //   required void Function() onEmpty,
  // }) {}
  //
  // @override
  // Future<TodoItem> findById({required String id}) async {
  //   return Future.value(_data[id]);
  // }
  //
  // @override
  // Future<void> create({required TodoItem item}) async {
  //   while (true) {
  //     final rand = Random(DateTime.now().microsecondsSinceEpoch);
  //     final nextId = rand.nextInt(10000000000000000).toString();
  //     print(nextId);
  //     if (!_data.containsKey(nextId)) {
  //       _data[nextId] = item.copyWith(
  //         id: TodoId(nextId),
  //         title: item.title,
  //         detail: item.detail,
  //         isDone: item.isDone,
  //         createdAt: item.createdAt,
  //       );
  //       break;
  //     }
  //   }
  // }
  //
  // @override
  // Future<void> update({required TodoItem item}) async {
  //   _data[item.id.value!] = item;
  // }
  //
  // @override
  // Future<void> delete({required TodoItem item}) async {
  //   _data.remove(item.id.value);
  // }
}
