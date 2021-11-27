import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_ddd_riverpod/domain/todo_item.dart';
import 'package:flutter_ddd_riverpod/domain/value/detail.dart';
import 'package:flutter_ddd_riverpod/domain/value/title.dart';
import 'package:flutter_ddd_riverpod/domain/value/todo_id.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final todoListRepository = Provider((ref) => TodoListRepository());

class TodoListRepository {
  final _db = FirebaseFirestore.instance;
  late Stream<QuerySnapshot>? _stream;
  late StreamSubscription? _streamListener;

  Future<void> disposeStream() async {
    if (_streamListener != null) {
      await _streamListener?.cancel();
    }
    _stream = null;
  }

  void subscribeStream(
    void Function(List<TodoItem>) onCompleted, {
    required void Function() onEmpty,
  }) {
    _stream = _db.collection('todo-list').snapshots();
    _streamListener = _stream?.listen((snapshot) {
      if (snapshot.size != 0) {
        onCompleted(snapshot.docs.map((item) {
          return TodoItem.fromJson({
            'id': item.id,
            'title': item['title'],
            'detail': item['detail'],
            'isDone': item['isDone'],
            'createdAt': item['createdAt'],
          });
        }).toList());
      } else {
        onEmpty();
      }
    });
  }

  TodoItem findById({required String id}) {
    // TODO: implement
    return TodoItem(
      id: const TodoId('id'),
      title: const Title('title'),
      detail: const Detail('detail'),
      createdAt: DateTime.now(),
    );
  }

  void update({required TodoItem item}) {
    // TODO: implement
  }

  void delete({required TodoItem item}) {
    // TODO: implement
  }
}
