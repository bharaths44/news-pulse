import 'package:get/get.dart';
import 'package:getx_clean_architecture/domain/news/data/news_repository.dart';
import 'package:getx_clean_architecture/presentation/news_screens/sports_news/controllers/sports_news_controller.dart';

class SportsNewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SportsNewsController>(
      () => SportsNewsController(newsRep: Get.find<NewsRepository>()),
    );
  }
}
