import 'package:flutter_ddd_riverpod/domain/todo_item.dart';
import 'package:flutter_ddd_riverpod/domain/value/detail.dart';
import 'package:flutter_ddd_riverpod/domain/value/title.dart';
import 'package:flutter_ddd_riverpod/domain/value/todo_id.dart';
import 'package:flutter_ddd_riverpod/infrastracture/todo_list_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final todoAppService = Provider(
  (ref) => TodoAppService(
    todoListRepository: ref.read(todoListRepository),
  ),
);

class TodoAppService {
  TodoAppService({required TodoListRepository todoListRepository})
      : _todoListRepository = todoListRepository;
  final TodoListRepository _todoListRepository;

  void subscribeTodoList(
    void Function(List<TodoItem>) onCompleted, {
    required void Function() onEmpty,
  }) {
    _todoListRepository.subscribeStream(
      onCompleted,
      onEmpty: onEmpty,
    );
  }

  void updateIsDone({required String id}) {
    final item = _todoListRepository.findById(id: id);
    final updatedItem = item.copyWith(
      id: item.id,
      title: item.title,
      detail: item.detail,
      isDone: !item.isDone,
    );
    _todoListRepository.update(item: updatedItem);
  }

  void updateTodoItem({required TodoItem item}) {
    // TODO: implement
  }

  void deleteTodoItem({required String id}) {
    final item = _todoListRepository.findById(id: id);
    _todoListRepository.delete(item: item);
  }

  void createTodoItem({required String title, required String detail}) {
    // final todoItem = TodoItem(
    //   id: const TodoId(null),
    //   title: Title(title),
    //   detail: Detail(detail),
    // ).toJson();
    // TODO: implement
  }
}
