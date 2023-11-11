import 'package:get/get.dart';
import 'package:getx_clean_architecture/presentation/business_news/controllers/business_news_controller.dart';

class BusinessNewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BusinessNewsController>(
      () => BusinessNewsController(),
    );
  }
}