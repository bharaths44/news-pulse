import 'package:get/get.dart';
import 'package:getx_clean_architecture/domain/home/data/home_repository.dart';
import 'package:getx_clean_architecture/domain/home/data/home_service.dart';

class HomeController extends GetxController {
  final count = 0.obs;

  HomeService homeService = Get.find();

  String data = "data";

  @override
  void onInit() {
    print("on home controller:init");
    getHomeData();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void getHomeData() async {
    Response response = await homeService.getData();
  }
}
