import 'package:flutter_ddd_riverpod/application/todo_app_service.dart';
import 'package:flutter_ddd_riverpod/domain/todo_item.dart';
import 'package:flutter_ddd_riverpod/domain/value/detail.dart';
import 'package:flutter_ddd_riverpod/domain/value/title.dart';
import 'package:flutter_ddd_riverpod/domain/value/todo_id.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

final todoItemProvider =
    StateNotifierProvider<TodoDetailNotifier, TodoItem>((ref) {
  return TodoDetailNotifier(
    todoAppService: ref.read(todoAppService),
  );
});

class TodoDetailNotifier extends StateNotifier<TodoItem> {
  TodoDetailNotifier({
    required TodoAppService todoAppService,
  })  : _todoAppService = todoAppService,
        super(TodoItem.initial());

  final TodoAppService _todoAppService;

  void reset() {
    state = TodoItem.initial();
  }

  bool isNew() {
    return state.id == const TodoId(null);
  }

  void setTodoItem(TodoItem item) {
    state = item.copyWith(
      id: item.id,
      title: item.title,
      detail: item.detail,
      createdAt: item.createdAt,
      isDone: item.isDone,
    );
  }

  void changeTitle(String title) {
    state = state.copyWith(
      id: state.id,
      title: Title(title),
      detail: state.detail,
      createdAt: state.createdAt,
      isDone: state.isDone,
    );
  }

  void changeDetail(String detail) {
    state = state.copyWith(
      id: state.id,
      title: state.title,
      detail: Detail(detail),
      createdAt: state.createdAt,
      isDone: state.isDone,
    );
  }

  Future<void> onTapElevatedButton() async {
    if (isNew()) {
      await _todoAppService.createTodoItem();
    } else {
      await _todoAppService.updateTodoItem(item: state);
    }
  }
}
