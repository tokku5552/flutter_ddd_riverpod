import 'package:flutter_ddd_riverpod/application/todo_app_service.dart';
import 'package:flutter_ddd_riverpod/domain/todo_item.dart';
import 'package:flutter_ddd_riverpod/domain/value/detail.dart';
import 'package:flutter_ddd_riverpod/domain/value/title.dart';
import 'package:flutter_ddd_riverpod/domain/value/todo_id.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

final todoItemProvider =
    StateNotifierProvider<TodoDetailNotifier, TodoItem?>((ref) {
  // ref.onDispose(() => ref.notifier.dispose());
  return TodoDetailNotifier(
    todoAppService: ref.read(todoAppService),
  );
});

class TodoDetailNotifier extends StateNotifier<TodoItem?> {
  TodoDetailNotifier({
    required TodoAppService todoAppService,
    TodoItem? todoItem,
  })  : _todoAppService = todoAppService,
        super(null);

  final TodoAppService _todoAppService;

  void reset() {
    state = null;
    state = TodoItem(
      id: TodoId(null),
      title: Title(""),
      detail: Detail(""),
      createdAt: DateTime.now(),
    );
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
    state = state != null
        ? state!.copyWith(
            id: state!.id,
            title: Title(title),
            detail: state!.detail,
            createdAt: state!.createdAt,
            isDone: state!.isDone,
          )
        : null;
  }

  void changeDetail(String detail) {
    state = state != null
        ? state!.copyWith(
            id: state!.id,
            title: state!.title,
            detail: Detail(detail),
            createdAt: state!.createdAt,
            isDone: state!.isDone,
          )
        : null;
  }

  Future<void> onTapElevatedButton() async {
    if (state!.id == null) {
      await createTodoItem();
    } else {
      await updateTodoItem();
    }
  }

  Future<void> updateTodoItem() async {
    await _todoAppService.updateTodoItem(item: state!);
  }

  Future<void> createTodoItem() async {
    await _todoAppService.createTodoItem(
        title: state!.title.value, detail: state!.detail.value);
  }
}
