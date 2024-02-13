import 'package:get/get.dart';

class DashBoardController extends GetxController {
  RxInt tabIndex = 3.obs;
  void changeTabIndex(int index) {
    tabIndex.value = index;
    update();
  }
}
