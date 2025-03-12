void main() async {
  print("Add Task");
  print(await addTask("Task 1"));

  print("View");
  print(await viewTasks());

  print("Remove Task");
  print(await removeTask("Done remove"));

  print("Viewing Tasks");
  print(await viewTasks());
}

List<String> tasks = [];

Future<String> addTask(String task) async {
  return await Future.delayed(Duration(seconds: 2), () {
    tasks.add(task);
    return "Task Added $task";
  });
}

Future<String> removeTask(String task) async {
  return await Future.delayed(Duration(seconds: 2), () {
    if (tasks.remove(task)) {
      return "Task Removed $task";
    } else {
      return "You Not have a task $task";
    }
  });
}

Future<List<String>> viewTasks() async {
  return await Future.delayed(Duration(seconds: 1), () => tasks);
}
