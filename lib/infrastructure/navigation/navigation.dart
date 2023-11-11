import 'package:get/get.dart';

import '../../presentation/screens.dart';
import 'bindings/controllers/controllers_bindings.dart';
import 'routes.dart';

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.home,
      page: () => const HomeScreen(),
      binding: HomeControllerBinding(),
    ),
    GetPage(
        name: Routes.businessNewsScreen,
        page: () => BusinessNewsScreen(),
        binding: BusinessNewsBinding()),
    GetPage(
        name: Routes.sportsNewsScreen,
        page: () => SportsNewsScreen(),
        binding: SportsNewsBinding()),
    GetPage(
        name: Routes.techNewsScreen,
        page: () => TechNewsScreen(),
        binding: TechNewsBinding())
  ];
}
