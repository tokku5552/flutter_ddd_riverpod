import 'package:flutter_ddd_riverpod/infrastructure/todo_list_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'todo_list_repository_mem.dart';

ProviderContainer overrideContainer() {
  return ProviderContainer(overrides: [
    todoListRepository.overrideWithProvider(
      Provider((ref) => TodoListRepositoryMem()),
    )
  ]);
}
