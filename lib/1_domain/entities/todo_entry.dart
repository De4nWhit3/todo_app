import 'package:equatable/equatable.dart';
import 'package:todo_app/1_domain/entities/unique_id.dart';

class ToDoEntry extends Equatable {
  final String description;
  final bool isDone;
  final EntryId id;

  ToDoEntry({
    required this.description,
    required this.isDone,
    required this.id,
  });

  factory ToDoEntry.empty() {
    return ToDoEntry(
      description: '',
      isDone: false,
      id: EntryId(),
    );
  }

  @override
  List<Object?> get props => [id, isDone, description];
}
