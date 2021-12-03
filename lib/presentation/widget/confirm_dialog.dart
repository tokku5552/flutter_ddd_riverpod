import 'package:flutter/material.dart';

class ConfirmDialog extends StatelessWidget {
  const ConfirmDialog({Key? key, required String title})
      : _title = title,
        super(key: key);

  final String _title;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(_title),
      actions: [
        TextButton(
          child: const Text("Cancel"),
          onPressed: () => Navigator.pop(context, false),
        ),
        TextButton(
          child: const Text("OK"),
          onPressed: () => Navigator.pop(context, true),
        ),
      ],
    );
  }
}
