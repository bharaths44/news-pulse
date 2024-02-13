import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/presentation/widget/bottom_navigation_bar.dart';
import 'package:getx_clean_architecture/presentation/dashboard/controller/dashboard_controller.dart';

import 'package:getx_clean_architecture/presentation/screens.dart';

import '../widget/sidebar_drawer.dart';

class DashBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashBoardController>(builder: (controller) {
      return Scaffold(
          appBar: AppBar(
            title: GestureDetector(
              onTap: () {
                controller.changeTabIndex(2);
              },
              child: Text(
                "NEWS PULSE",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          drawer: SideDrawer(),
          body: SafeArea(
            child: Obx(() {
              return IndexedStack(
                index: controller.tabIndex.value,
                children: [
                  TechNewsScreen(),
                  SportsNewsScreen(),
                  HomeScreen(),
                  BusinessNewsScreen(),
                  HealthNewsScreen(),
                ],
              );
            }),
          ),
          bottomNavigationBar: BottomNavBar());
    });
  }
}
