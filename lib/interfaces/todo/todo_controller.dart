import 'package:get/get.dart';
import 'package:playground_todo/application/todo/todo_facade.dart';
import 'package:playground_todo/domain/todo/todo_command.dart';
import 'package:playground_todo/domain/todo/todo_info.dart';

class TodoController extends GetxController {
  final TodoFacade _todoFacade = Get.put(TodoFacade(), permanent: true);

  // TodoController({required todoFacade}) : _todoFacade = todoFacade;

  final _todoList = <TodoInfo>[].obs;
  List<TodoInfo> get todoList => _todoList;

  getAllTodos() async {
    _todoList(await _todoFacade.getAllTodoInfos());
  }

  addTodo() async {
    final item = await _todoFacade.addTodoInfo(AddTodoCommand(
        userId: 2,
        name: "todo ${_todoList.length.toString()}",
        description: "description"));
    _todoList.add(item);
  }

  @override
  void onInit() {
    ever(_todoList, (_)=> print("ever 매번 호출"));
    once(_todoList, (_)=> print("once 한번만 호출"));
    debounce(_todoList, (_) => print("debounce 마지막에 한번만 호출"), time: const Duration(seconds: 1));
    interval(_todoList, (_) => print("interval 변경되고 있는 동안에 설정한 초마다 호출" ), time: const Duration(seconds: 1));
    getAllTodos();
    super.onInit();
  }
}
