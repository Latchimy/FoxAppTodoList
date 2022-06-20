import 'package:flutter/material.dart';
import 'package:foxapp/app/data/services/storage/services.dart';
import 'package:foxapp/app/modules/home/binding.dart';
import 'package:foxapp/app/modules/home/view.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  await Get.putAsync(() => StorageService().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Fox App',
      home: const HomePage(),
      initialBinding: HomeBinding(),
      builder: EasyLoading.init(),
      debugShowCheckedModeBanner: false,
    );
  }
}
