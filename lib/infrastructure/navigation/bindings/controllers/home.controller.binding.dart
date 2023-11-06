import 'package:get/get.dart';
import 'package:getx_clean_architecture/domain/home/data/home_repository.dart';
import 'package:getx_clean_architecture/domain/home/data/home_service.dart';

import '../../../../presentation/home/controllers/home.controller.dart';

class HomeControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
