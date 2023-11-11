import 'package:get/get.dart';

import '../../../../presentation/widgets/bottomnavbar/controller/bottomnavbarcontroller.dart';

class BottomNavigationBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavigationBarController>(
      () => BottomNavigationBarController(),
    );
  }
}
