import 'package:get/get.dart';
import 'package:getx_clean_architecture/presentation/tech_news/controllers/tech_news_controller.dart';

class TechNewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TechNewsController>(
      () => TechNewsController(),
    );
  }
}