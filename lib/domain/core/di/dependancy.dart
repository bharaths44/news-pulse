import 'package:get/get.dart';
import 'package:getx_clean_architecture/config.dart';
import 'package:getx_clean_architecture/domain/news/data/news_repository.dart';
import 'package:getx_clean_architecture/domain/news/data/news_service.dart';
import 'package:getx_clean_architecture/infrastructure/storage/app_storage.dart';

import '../../../infrastructure/dal/services/api_service.dart';
//import '../../home/data/home_repository.dart';
//import '../../home/data/home_service.dart';

class DependencyCreator {
  static init() {
    Get.lazyPut<ApiService>(
      () => ApiService(
          baseUrl: ConfigEnvironments.getEnvironments()['url'] ?? ""),
    );
    Get.lazyPut<AppStorage>(() => AppStorage());
    // Get.lazyPut<HomeService>(() => HomeRepository());
    // Get.lazyPut<NewsService>(
    //     (() => NewsRepository(apiService: Get.find<ApiService>())));
    Get.lazyPut(() => NewsRepository(apiService: Get.find<ApiService>()));
  }
}
