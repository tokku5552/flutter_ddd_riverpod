import 'package:flutter/material.dart';
import 'package:flutter_ddd_riverpod/infrastructure/todo_list_repository.dart';
import 'package:flutter_ddd_riverpod/presentation/todo_list_page.dart';
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

  testWidgets('The screen transition is done correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          todoListRepository.overrideWithValue(TodoListRepositoryMem())
        ],
        child: MaterialApp(
          title: 'Flutter DDD Riverpod Widget Test',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const TodoListPage(),
        ),
      ),
    );

    expect(find.text('Todo List Page'), findsOneWidget);
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('新規作成'), findsNothing);
  });
}
