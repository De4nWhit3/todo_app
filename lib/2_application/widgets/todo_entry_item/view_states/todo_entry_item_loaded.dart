import 'package:flutter/material.dart';
import 'package:todo_app/1_domain/entities/todo_entry.dart';

class ToDoEntryItemLoaded extends StatelessWidget {
  const ToDoEntryItemLoaded({
    super.key,
    required this.entryItem,
  });

  final ToDoEntry entryItem;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(entryItem.description),
      value: entryItem.isDone,
      onChanged: (value) {},
    );
  }
}
