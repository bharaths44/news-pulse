import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/presentation/dashboard/controller/dashboard_controller.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashBoardController>(builder: (controller) {
      return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.blueGrey,
        selectedItemColor: Colors.black,
        currentIndex: controller.tabIndex.value,
        onTap: controller.changeTabIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.laptop_mac_sharp),
            label: 'Tech',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_soccer_sharp),
            label: 'Sports',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_sharp),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money_sharp),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.heart_broken_sharp),
            label: 'Health',
          ),
        ],
      );
    });
  }
}
