import 'package:flutter_ddd_riverpod/application/todo_app_service.dart';
import 'package:flutter_ddd_riverpod/domain/todo_item.dart';
import 'package:flutter_ddd_riverpod/domain/value/todo_id.dart';
import 'package:flutter_ddd_riverpod/infrastructure/todo_list_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'infrastructure/container.dart';
import 'infrastructure/todo_list_repository_mem.dart';
import 'test_data.dart';

void main() {
  late ProviderContainer _container;
  late TodoListRepositoryMem _repository;

  setUp(() {
    _container = overrideTodoListRepository();
    _repository = _container.read(todoListRepository) as TodoListRepositoryMem;
    _repository.reset();
  });

  test('findByTodoId', () async {
    final item = TodoItem.initial();
    await _repository.create(item: item);
    final nextId = _repository.nextId;

    final service = _container.read(todoAppService);
    final result = await service.findByTodoId(todoId: TodoId(nextId));
    expect(
      result,
      item.copyWith(
        id: TodoId(nextId),
        title: item.title,
        detail: item.detail,
        isDone: item.isDone,
        createdAt: item.createdAt,
      ),
    );
  });

  test('updateIsDone', () async {
    _repository.set(dummyTodoList);
    final service = _container.read(todoAppService);
    final result1 =
        await service.findByTodoId(todoId: TodoId(dummyTodoList[0].id.value));
    expect(result1, dummyTodoList[0]);

    await service.updateIsDone(todoId: dummyTodoList[0].id);
    final result2 =
        await service.findByTodoId(todoId: TodoId(dummyTodoList[0].id.value));
    expect(result2.isDone, !dummyTodoList[0].isDone);
  });
}
