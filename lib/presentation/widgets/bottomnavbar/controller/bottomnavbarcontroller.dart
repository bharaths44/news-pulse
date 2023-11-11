import 'package:get/get.dart';

class BottomNavigationBarController extends GetxController {
  final RxInt _selectedIndex = 0.obs;

  int get selectedIndex => _selectedIndex.value;

  set selectedIndex(int index) {
    _selectedIndex.value = index;
    Get.toNamed(pages[index]);
  }

  final List<String> pages = [
    '/home',
    //'/about',
    //'/settings',
  ];
}
