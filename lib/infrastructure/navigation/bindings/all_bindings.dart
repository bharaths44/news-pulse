import 'package:get/get.dart';
import 'package:getx_clean_architecture/infrastructure/navigation/bindings/controllers/home.controller.binding.dart';
import 'package:getx_clean_architecture/infrastructure/navigation/bindings/controllers/business_news_controller_binding.dart';
import 'package:getx_clean_architecture/infrastructure/navigation/bindings/controllers/sports_news_controller_binding.dart';
import 'package:getx_clean_architecture/infrastructure/navigation/bindings/controllers/tech_news_controller_binding.dart';
import 'package:getx_clean_architecture/infrastructure/navigation/bindings/controllers/dashboard_controller_binding.dart';
import 'package:getx_clean_architecture/infrastructure/navigation/bindings/controllers/health_news_controller_binding.dart';

class AllBindings extends Bindings {
  @override
  void dependencies() {
    
    HomeControllerBinding().dependencies();
    BusinessNewsBinding().dependencies();
    SportsNewsBinding().dependencies();
    TechNewsBinding().dependencies();
    DashBoardBinding().dependencies();
    HealthNewsBinding().dependencies();
  }
}
