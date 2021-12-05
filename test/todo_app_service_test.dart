import 'package:flutter_ddd_riverpod/application/todo_app_service.dart';
import 'package:flutter_ddd_riverpod/infrastructure/todo_list_repository.dart';
import 'package:flutter_ddd_riverpod/presentation/todo_list_notifier.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/mockito.dart';

import 'infrastructure/todo_list_repository_mem.dart';


final todoListRepository=Provider((ref)=>TodoListRepository());
final todoAppService = Provider(
      (ref) => TodoAppService(
    todoListRepository: ref.read(todoListRepository),
  ),
);

void main(){
  test('test',() {
    final container=override();
    final service = container.read(todoAppService);

when(service.findByTodoId(todoId: todoId)).thenAnswer((realInvocation) => realInvocation.namedArguments);
    service.findByTodoId(todoId: todoId);

  });
}
