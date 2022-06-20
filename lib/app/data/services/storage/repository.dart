import 'package:foxapp/app/data/models/task.dart';
import 'package:foxapp/app/data/providers/task/provider.dart';

class TaskRepository {
  TaskProviders taskProvider;
  TaskRepository({required this.taskProvider});

  List<Task> readTask() => taskProvider.readTask();
  void writeTasks(List<Task> tasks) => taskProvider.writeTasks(tasks);
}
