import 'package:flutter/material.dart';
import 'package:flutter_ddd_riverpod/application/state/todo_list_state.dart';
import 'package:flutter_ddd_riverpod/application/todo_app_service.dart';
import 'package:flutter_ddd_riverpod/domain/todo_item.dart';
import 'package:flutter_ddd_riverpod/presentation/todo_detail_notifier.dart';
import 'package:flutter_ddd_riverpod/presentation/todo_detail_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

final todoListProvider = StateNotifierProvider<TodoListNotifier, TodoListState>(
  (ref) => TodoListNotifier(
    todoAppService: ref.read(todoAppService),
  )..init(),
);

class TodoListNotifier extends StateNotifier<TodoListState> {
  TodoListNotifier({required TodoAppService todoAppService})
      : _todoAppService = todoAppService,
        super(const TodoListState());

  final TodoAppService _todoAppService;

  void init() {
    state = state.copyWith(isFetching: true);
    _todoAppService.subscribeTodoList(_onFetched, onEmpty: _dispose);
  }

  void _dispose() {
    state = state.copyWith(isFetching: false, todoList: []);
  }

  void _onFetched(List<TodoItem> todoList) {
    state = state.copyWith(
        isFetching: false,
        todoList: todoList
            .map(
              (item) => TodoItem(
                id: item.id,
                title: item.title,
                detail: item.detail,
                createdAt: item.createdAt,
              ),
            )
            .toList());
  }

  void onTapItem(BuildContext context, WidgetRef ref, TodoItem item) {
    ref.read(todoItemProvider.notifier).setTodoItem(item);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => const TodoDetailPage(),
      ),
    );
  }

  Future<void> onLongPressItem({required TodoItem item}) async {
    await _todoAppService.deleteTodoItem(todoId: item.id);
  }

  void onTapFAB(BuildContext context, WidgetRef ref) {
    ref.read(todoItemProvider.notifier).reset();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => const TodoDetailPage(),
      ),
    );
  }
}
