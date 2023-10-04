import 'package:todo_app/1_domain/entities/unique_id.dart';

class ToDoEntry {
  final String decription;
  final bool isDone;
  final EntryId id;

  ToDoEntry({
    required this.decription,
    required this.isDone,
    required this.id,
  });

  factory ToDoEntry.empty() {
    return ToDoEntry(
      decription: '',
      isDone: false,
      id: EntryId(),
    );
  }
}
