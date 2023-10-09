part of 'todo_detail_cubit.dart';

sealed class TodoDetailCubitState extends Equatable {
  const TodoDetailCubitState();

  @override
  List<Object> get props => [];
}

final class TodoDetailCubitLoadingState extends TodoDetailCubitState {}

final class TodoDetailCubitErrorState extends TodoDetailCubitState {}

final class TodoDetailCubitLoadedState extends TodoDetailCubitState {
  const TodoDetailCubitLoadedState({required this.entryIds});

  final List<EntryId> entryIds;

  @override
  List<Object> get props => [entryIds];
}
