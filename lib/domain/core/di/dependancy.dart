import 'package:get/get.dart';
import 'package:getx_clean_architecture/config.dart';
import 'package:getx_clean_architecture/domain/news/data/news_repository.dart';
import 'package:getx_clean_architecture/infrastructure/storage/app_storage.dart';
import 'package:getx_clean_architecture/presentation/business_news/controllers/business_news_controller.dart';

import '../../../infrastructure/dal/services/api_service.dart';

class DependencyCreator {
  static init() {
    Get.lazyPut<ApiService>(
      () => ApiService(
          baseUrl: ConfigEnvironments.getEnvironments()['url'] ?? ""),
    );
    Get.lazyPut<AppStorage>(() => AppStorage());
    Get.lazyPut(() => NewsRepository(apiService: Get.find<ApiService>()));
    Get.lazyPut(
        () => BusinessNewsController(newsRep: Get.find<NewsRepository>()));
  }
}
