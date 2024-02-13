import 'package:get/get.dart';
import 'package:getx_clean_architecture/presentation/dashboard/dashboard_screen.dart';


import '../../presentation/screens.dart';
import 'bindings/controllers/controllers_bindings.dart';
import 'routes.dart';

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.dashboard,
      page: () => DashBoardScreen(),
      binding: DashBoardBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => HomeScreen(),
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
        binding: TechNewsBinding()),
    GetPage(
        name: Routes.healthsNewsScreen,
        page: () => HealthNewsScreen(),
        binding: HealthNewsBinding())
  ];
}
