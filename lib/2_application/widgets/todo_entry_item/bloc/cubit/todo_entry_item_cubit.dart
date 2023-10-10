import 'package:either_dart/either.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/1_domain/entities/todo_entry.dart';
import 'package:todo_app/1_domain/entities/unique_id.dart';
import 'package:todo_app/1_domain/use_cases/load_todo_entry.dart';
import 'package:todo_app/core/use_case.dart';

part 'todo_entry_item_state.dart';

class TodoEntryItemCubit extends Cubit<TodoEntryItemCubitState> {
  TodoEntryItemCubit({
    required this.entryId,
    required this.collectionId,
    required this.loadToDoEntry,
  }) : super(TodoEntryItemLoadingState());

  final EntryId entryId;
  final CollectionId collectionId;
  final LoadToDoEntry loadToDoEntry;
  // final UpdateToDoEntry updateToDoEntry;

  Future<void> fetch() async {
    try {
      final entry = await loadToDoEntry.call(
        ToDoEntryIdsParam(
          collectionId: collectionId,
          entryId: entryId,
        ),
      );

      return entry.fold(
        (left) => emit(TodoEntryItemErrorState()),
        (right) => TodoEntryItemLoadedState(toDoEntry: right),
      );
    } on Exception {
      emit(TodoEntryItemErrorState());
    }
  }

  Future<void> update() async {
    throw UnimplementedError();
  }
}
