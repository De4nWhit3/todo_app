import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'todo_detail_state.dart';

class TodoDetailCubit extends Cubit<TodoDetailState> {
  TodoDetailCubit() : super(TodoDetailInitial());
}
