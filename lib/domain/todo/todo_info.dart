class TodoInfo {
  final int id;
  final String name;
  final String description;
  final bool done;
  String? dueDate;
  final int userId;

  TodoInfo({
    required this.id,
    required this.name,
    required this.description,
    this.dueDate,
    required this.done,
    required this.userId });
}