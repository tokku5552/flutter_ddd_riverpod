import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
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
    void Function(List<Map<String, dynamic>>) onCompleted, {
    required void Function() onEmpty,
  }) {
    _stream = _db.collection('todo-list').snapshots();
    _streamListener = _stream?.listen((snapshot) {
      if (snapshot.size != 0) {
        onCompleted(snapshot.docs.map((item) {
          return {
            'id': item.id,
            'title': item['title'],
            'detail': item['detail'],
            'isDone': item['isDone'],
          };
        }).toList());
      } else {
        onEmpty();
      }
    });
  }

  Map<String, dynamic> findById({required String id}) {
    // TODO: implement
    return {
      'id': id,
      'title': 'title',
      'detail': 'detail',
      'isDone': 'isDone',
    };
  }
}
