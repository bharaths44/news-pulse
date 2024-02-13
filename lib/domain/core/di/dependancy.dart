import 'package:get/get.dart';
import 'package:getx_clean_architecture/config.dart';
import 'package:getx_clean_architecture/infrastructure/storage/app_storage.dart';

import '../../../infrastructure/dal/services/api_service.dart';
import '../../../infrastructure/navigation/bindings/all_bindings.dart';
import '../../news/data/news_repository.dart';

class DependencyCreator {
  static init() {
    Get.lazyPut<ApiService>(
      () => ApiService(
          baseUrl: ConfigEnvironments.getEnvironments()['url'] ?? ""),
    );
    Get.lazyPut(() => NewsRepository(apiService: Get.find<ApiService>()));
    Get.lazyPut<AppStorage>(() => AppStorage());
    AllBindings().dependencies();
  }
}
