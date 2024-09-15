import 'dart:io';
import 'providers/task_provider.dart';

void main() {
  final TaskProvider taskProvider = TaskProvider();

  while (true) {
    print("\nTASKINATOR [where all people love to procrastinate]");
    print("1. Add Task");
    print("2. View Tasks");
    print("3. Mark Task as Completed");
    print("4. Remove Task");
    print("5. Exit");
    print("Choose an option:");
    
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      print("Enter task description:");
      String? description = stdin.readLineSync();
      if (description != null && description.isNotEmpty) {
        taskProvider.addTask(description);
        print("Task added.");
      } else {
        print("Task description cannot be empty.");
      }
    } else if (choice == '2') {
      List<String> tasks = taskProvider.getTasks();
      if (tasks.isEmpty) {
        print("Things To Do is empty.");
      } else {
        print("Things To Do:");
        for (String task in tasks) {
          print(task);
        }
      }
    } else if (choice == '3') {
      List<String> tasks = taskProvider.getTasks();
      if (tasks.isEmpty) {
        print("Things To Do is empty.");
      } else {
        print("Things To Do:");
        for (String task in tasks) {
          print(task);
        }
        print("Enter task number to mark as completed:");
        String? taskNumber = stdin.readLineSync();
        if (taskNumber != null && int.tryParse(taskNumber) != null) {
          int index = int.parse(taskNumber) - 1;
          if (index >= 0 && index < tasks.length) {
            taskProvider.completeTask(index);
            print("Task #${index + 1} marked as completed.");
          } else {
            print("Task doesn't exist.");
          }
        } else {
          print("Invalid task number.");
        }
      }
    } else if (choice == '4') {
      List<String> tasks = taskProvider.getTasks();
      if (tasks.isEmpty) {
        print("Things To Do is empty.");
      } else {
        print("Things To Do:");
        for (String task in tasks) {
          print(task);
        }
        print("Enter task number to remove:");
        String? taskNumber = stdin.readLineSync();
        if (taskNumber != null && int.tryParse(taskNumber) != null) {
          int index = int.parse(taskNumber) - 1;
          if (index >= 0 && index < tasks.length) {
            taskProvider.removeTask(index);
            print("Task #${index + 1} removed.");
          } else {
            print("Task doesn't exist.");
          }
        } else {
          print("Invalid task number.");
        }
      }
    } else if (choice == '5') {
      print("Let's END this suffering T_T");
      break;
    } else {
      print("Invalid option. Please choose again.");
    }
  }
}
