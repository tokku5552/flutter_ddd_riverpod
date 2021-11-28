import 'package:flutter/material.dart';
import 'package:flutter_ddd_riverpod/domain/todo_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TodoDetailPage extends HookConsumerWidget {
  const TodoDetailPage({Key? key, TodoItem? todoItem})
      : _todoItem = todoItem,
        super(key: key);

  final TodoItem? _todoItem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_todoItem != null ? '編集画面' : '新規作成'),
      ),
      body: Container(),
    );
  }
}
