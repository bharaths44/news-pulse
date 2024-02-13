import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/presentation/dashboard/controller/dashboard_controller.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Menu'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              Get.find<DashBoardController>().changeTabIndex(0);
              Get.back();
            },
          ),
          ListTile(
            title: Text('Tech'),
            onTap: () {
              Get.find<DashBoardController>().changeTabIndex(1);
              Get.back();
            },
          ),
          ListTile(
            title: Text('Sports'),
            onTap: () {
              Get.find<DashBoardController>().changeTabIndex(2);
              Get.back();
            },
          ),
          ListTile(
            title: Text('Business'),
            onTap: () {
              Get.find<DashBoardController>().changeTabIndex(3);
              Get.back();
            },
          ),
        ],
      ),
    );
  }
}
