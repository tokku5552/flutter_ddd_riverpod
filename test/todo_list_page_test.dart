import 'package:flutter/material.dart';
import 'package:flutter_ddd_riverpod/infrastructure/todo_list_repository.dart';
import 'package:flutter_ddd_riverpod/presentation/todo_list_page.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_ddd_riverpod/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'infrastructure/container.dart';
import 'infrastructure/todo_list_repository_mem.dart';

void main() {
  late ProviderContainer _container;
  late TodoListRepositoryMem _repository;

  setUp(() {
    _container = overrideTodoListRepository();
    _repository = _container.read(todoListRepository) as TodoListRepositoryMem;
    _repository.reset();
  });

  testWidgets('画面遷移が正しく行われること', (WidgetTester tester) async {
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
    // // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    // // Verify that our counter has incremented.
    expect(find.text('新規作成'), findsNothing);
    // expect(find.text('1'), findsOneWidget);
  });
}
