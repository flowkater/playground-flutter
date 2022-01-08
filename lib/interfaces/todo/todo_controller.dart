import 'package:get/get.dart';
import 'package:playground_todo/application/todo/todo_facade.dart';
import 'package:playground_todo/domain/todo/todo_info.dart';

class TodoController extends GetxController{
  final TodoFacade _todoFacade;
  TodoController({required todoFacade}) : _todoFacade = todoFacade;

  final _todoList = <TodoInfo>[].obs;
  List<TodoInfo> get todoList => _todoList;
  void setTodoList(value) => _todoList.value = value;

  getAllTodos() {
    setTodoList(_todoFacade.getAllTodoInfos());
  }
}