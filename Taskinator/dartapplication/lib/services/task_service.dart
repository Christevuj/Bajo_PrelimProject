import '../models/task.dart';

class TaskService {
  List<Task> _tasks = [];

  List<Task> getTasks() {
    return _tasks;
  }

  void addTask(String description) {
    _tasks.add(Task(description: description));
  }

  void markTaskAsCompleted(int index) {
    if (index >= 0 && index < _tasks.length) {
      _tasks[index].markAsCompleted();
    }
  }

  void removeTask(int index) {
    if (index >= 0 && index < _tasks.length) {
      _tasks.removeAt(index);
    }
  }
}
