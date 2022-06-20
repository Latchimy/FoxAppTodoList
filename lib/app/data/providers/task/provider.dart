import 'dart:convert';

import 'package:foxapp/app/core/utils/keys.dart';
import 'package:foxapp/app/data/models/task.dart';
import 'package:foxapp/app/data/services/storage/services.dart';
import 'package:get/get.dart';

class TaskProviders {
  final _storage = Get.find<StorageService>();

  /*{'tasks':[
    {
      'title':'Work',
      'color':'#ff123456',
      'icon':0xe123,
    }
  ]}*/

  List<Task> readTask() {
    var tasks = <Task>[];
    jsonDecode(_storage.read(taskKey).toString())
        .forEach((e) => tasks.add(Task.fromJson(e)));
    return tasks;
  }

  void writeTasks(List<Task> tasks) {
    _storage.write(taskKey, jsonEncode(tasks));
  }
}
