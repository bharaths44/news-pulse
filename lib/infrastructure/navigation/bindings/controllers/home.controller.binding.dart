import 'package:get/get.dart';
import 'package:getx_clean_architecture/domain/news/data/news_repository.dart';

import '../../../../presentation/home/controllers/home.controller.dart';

class HomeControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(newsRep: Get.find<NewsRepository>()),
    );
  }
}
