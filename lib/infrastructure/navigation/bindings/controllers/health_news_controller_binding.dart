import 'package:get/get.dart';
import 'package:getx_clean_architecture/domain/news/data/news_repository.dart';

import '../../../../presentation/news_screens/health_news/controllers/health_news_controller.dart';

class HealthNewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HealthNewsController>(
      () => HealthNewsController(newsRep: Get.find<NewsRepository>()),
    );
  }
}
