import 'package:get/get.dart';
import 'package:playground_todo/application/todo/todo_facade.dart';
import 'package:playground_todo/domain/todo/todo_command.dart';
import 'package:playground_todo/domain/todo/todo_info.dart';

class TodoController extends GetxController {
  final TodoFacade _todoFacade;

  TodoController({required todoFacade}) : _todoFacade = todoFacade;

  final _todoList = <TodoInfo>[].obs;

  List<TodoInfo> get todoList => _todoList;

  void setTodoList(value) => _todoList.value = value;

  getAllTodos() async {
    setTodoList(await _todoFacade.getAllTodoInfos());
  }

  addTodo() async {
    setTodoList(await _todoFacade.addTodoInfo(AddTodoCommand(
        userId: 1,
        name: "todo ${_todoList.length.toString()}",
        description: "description")));
  }

  @override
  void onInit() {
    super.onInit();
    getAllTodos();
  }
}
