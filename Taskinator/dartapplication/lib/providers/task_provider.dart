import '../services/task_service.dart'; // Import TaskService

class TaskProvider {
  final TaskService _taskService = TaskService();

  List<String> getTasks() {
    List<String> tasksList = [];
    for (int i = 0; i < _taskService.getTasks().length; i++) {
      tasksList.add('${i + 1}. ${_taskService.getTasks()[i]}');
    }
    return tasksList;
  }

  void addTask(String description) {
    _taskService.addTask(description);
  }

  void completeTask(int index) {
    _taskService.markTaskAsCompleted(index);
  }

  void removeTask(int index) {
    _taskService.removeTask(index);
  }
}
