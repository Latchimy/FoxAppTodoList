import 'package:foxapp/app/data/providers/task/provider.dart';
import 'package:foxapp/app/data/services/storage/repository.dart';
import 'package:foxapp/app/modules/home/controller.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        taskRepository: TaskRepository(
          taskProvider: TaskProviders(),
        ),
      ),
    );
  }
}
