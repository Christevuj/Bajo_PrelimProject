class Task {
  String description;
  bool isCompleted;

  Task({required this.description, this.isCompleted = false});

  void markAsCompleted() {
    isCompleted = true;
  }

  @override
  String toString() {
    return '[${isCompleted ? '✔' : ' '}] $description';
  }
}
