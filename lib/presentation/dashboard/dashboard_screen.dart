import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/presentation/dashboard/bottom_navigation_bar.dart';
import 'package:getx_clean_architecture/presentation/dashboard/controller/dashboard_controller.dart';
import 'package:getx_clean_architecture/presentation/news_screens/health_news/health_news_screen.dart';

import 'package:getx_clean_architecture/presentation/screens.dart';

import 'sidebar_drawer.dart';

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashBoardController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(title: Text("News App")),
        drawer: SideDrawer(),
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex.value,
            children: [
              TechNewsScreen(),
              SportsNewsScreen(),
              HomeScreen(),
              BusinessNewsScreen(),
              HealthNewsScreen(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBar(),
      );
    });
  }
}
