import 'package:flutter_ddd_riverpod/domain/todo_item.dart';
import 'package:flutter_ddd_riverpod/domain/value/detail.dart';
import 'package:flutter_ddd_riverpod/domain/value/title.dart';
import 'package:flutter_ddd_riverpod/domain/value/todo_id.dart';

List<TodoItem> dummyTodoList = [
  TodoItem(
    id: const TodoId('0000000000'),
    title: const Title('テスト0'),
    detail: const Detail('テスト0テスト0'),
    isDone: false,
    createdAt: DateTime(0),
  ),
  TodoItem(
    id: const TodoId('0000000001'),
    title: const Title('テスト1'),
    detail: const Detail('テスト1テスト1'),
    isDone: false,
    createdAt: DateTime(0),
  ),
  TodoItem(
    id: const TodoId('0000000002'),
    title: const Title('テスト2'),
    detail: const Detail('テスト2テスト2'),
    isDone: true,
    createdAt: DateTime(0),
  ),
  TodoItem(
    id: const TodoId('0000000003'),
    title: const Title('テスト3'),
    detail: const Detail('テスト3テスト3'),
    isDone: false,
    createdAt: DateTime(0),
  ),
  TodoItem(
    id: const TodoId('0000000004'),
    title: const Title('テスト4'),
    detail: const Detail('テスト4テスト4'),
    isDone: false,
    createdAt: DateTime(0),
  ),
  TodoItem(
    id: const TodoId('0000000005'),
    title: const Title('テスト5'),
    detail: const Detail('テスト5テスト5'),
    isDone: false,
    createdAt: DateTime(0),
  ),
];
