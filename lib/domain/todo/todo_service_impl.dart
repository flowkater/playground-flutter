import 'package:playground_todo/domain/todo/todo.dart';
import 'package:playground_todo/domain/todo/todo_reader.dart';
import 'package:playground_todo/domain/todo/todo_service.dart';
import 'package:playground_todo/domain/todo/todo_store.dart';

class TodoServiceImpl implements TodoService {
  final TodoReader _todoReader;
  final TodoStore _todoStore;

  TodoServiceImpl({required todoReader, required todoStore}) : _todoReader = todoReader, _todoStore = todoStore;

  @override
  Future<List<Todo>> getAllTodos() async {
    return await _todoReader.getAllTodos();
  }

  @override
  Future<Todo> addTodo() async {
    return await _todoStore.store();
  }
}