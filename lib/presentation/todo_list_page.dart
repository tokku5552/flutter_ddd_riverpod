import 'package:flutter/material.dart';
import 'package:flutter_ddd_riverpod/presentation/todo_detail_page.dart';
import 'package:flutter_ddd_riverpod/presentation/todo_list_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TodoListPage extends HookConsumerWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(todoListProvider);
    final notifier = ref.read(todoListProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List Page'),
      ),
      body: ListView(
        children: state.todoList
            .map(
              (item) => InkWell(
                child: ListTile(
                  leading: Checkbox(
                    value: item.isDone,
                    onChanged: (bool? value) {},
                  ),
                  title: RichText(
                    text: TextSpan(
                      text: item.title.value,
                      style: const TextStyle(
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  notifier.onTapItem(context, item);
                },
              ),
            )
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TodoDetailPage(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
