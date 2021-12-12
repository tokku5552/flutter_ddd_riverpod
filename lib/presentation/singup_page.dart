import 'package:flutter/material.dart';
import 'package:flutter_ddd_riverpod/presentation/todo_detail_notifier.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignUpPage extends HookConsumerWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final state = ref.watch(todoItemProvider);
    final notifier = ref.read(todoItemProvider.notifier);
    final titleController = useTextEditingController(text: "");
    final detailController = useTextEditingController(text: "");

    return Scaffold(
      appBar: AppBar(
        title: const Text('ログイン'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'タイトル',
                hintText: 'やること',
              ),
              onChanged: (title) {
                notifier.changeTitle(title);
              },
              controller: titleController,
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: '詳細',
                hintText: 'やることの詳細',
              ),
              onChanged: (detail) {
                notifier.changeDetail(detail);
              },
              controller: detailController,
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () async {
                await notifier.onTapElevatedButton();
                Navigator.pop(context);
              },
              child: Text(notifier.isNew() ? '作成' : '更新'),
            )
          ],
        ),
      ),
    );
  }
}
