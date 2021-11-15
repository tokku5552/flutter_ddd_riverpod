import 'package:flutter_ddd_riverpod/domain/todo_item.dart';
import 'package:flutter_ddd_riverpod/domain/value/detail.dart';
import 'package:flutter_ddd_riverpod/domain/value/title.dart';
import 'package:flutter_ddd_riverpod/domain/value/todo_id.dart';

class TodoAppService {
  createTodoItem({required String title, required String detail}) {
    final todoItem = TodoItem(
      id: const TodoId(null),
      title: Title(title),
      detail: Detail(detail),
    ).toJson();
  }
}
