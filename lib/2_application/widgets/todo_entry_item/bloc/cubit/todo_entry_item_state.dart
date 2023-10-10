part of 'todo_entry_item_cubit.dart';

sealed class TodoEntryItemCubitState extends Equatable {
  const TodoEntryItemCubitState();

  @override
  List<Object> get props => [];
}

final class TodoEntryItemLoadingState extends TodoEntryItemCubitState {}

final class TodoEntryItemErrorState extends TodoEntryItemCubitState {}

final class TodoEntryItemLoadedState extends TodoEntryItemCubitState {
  const TodoEntryItemLoadedState({required this.toDoEntry});

  final ToDoEntry toDoEntry;

  @override
  List<Object> get props => [toDoEntry];
}
