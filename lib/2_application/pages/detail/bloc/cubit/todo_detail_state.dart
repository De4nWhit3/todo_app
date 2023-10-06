part of 'todo_detail_cubit.dart';

sealed class TodoDetailState extends Equatable {
  const TodoDetailState();

  @override
  List<Object> get props => [];
}

final class TodoDetailInitial extends TodoDetailState {}
