import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/1_domain/entities/unique_id.dart';
import 'package:todo_app/1_domain/repositories/todo_repository.dart';
import 'package:todo_app/1_domain/use_cases/load_todo_entry.dart';
import 'package:todo_app/2_application/widgets/todo_entry_item/bloc/cubit/todo_entry_item_cubit.dart';
import 'package:todo_app/2_application/widgets/todo_entry_item/view_states/todo_entry_item_error.dart';
import 'package:todo_app/2_application/widgets/todo_entry_item/view_states/todo_entry_item_loaded.dart';
import 'package:todo_app/2_application/widgets/todo_entry_item/view_states/todo_entry_item_loading.dart';

class ToDoEntryItemProvider extends StatelessWidget {
  const ToDoEntryItemProvider({
    super.key,
    required this.collectionId,
    required this.entryId,
  });

  final CollectionId collectionId;
  final EntryId entryId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TodoEntryItemCubit>(
      create: (context) => TodoEntryItemCubit(
          collectionId: collectionId,
          entryId: entryId,
          loadToDoEntry: LoadToDoEntry(
            toDoRepository: RepositoryProvider.of<ToDoRepository>(context),
          ))
        ..fetch(),
      child: const ToDoEntryItem(),
    );
  }
}

class ToDoEntryItem extends StatelessWidget {
  const ToDoEntryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoEntryItemCubit, TodoEntryItemCubitState>(
      builder: (context, state) {
        if (state is TodoEntryItemLoadingState) {
          return const ToDoEntryItemLoading();
        } else if (state is TodoEntryItemLoadedState) {
          return ToDoEntryItemLoaded(
            entryItem: state.toDoEntry,
          );
        } else {
          return const ToDoEntryItemError();
        }
      },
    );
  }
}
