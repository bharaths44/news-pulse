import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/presentation/dashboard/controller/dashboard_controller.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.only(top: 50.0, left: 30.0, right: 30.0),
          children: [
            buildProfileImage(),
            SizedBox(height: 50.0),
            buildMenuItem('Home', Icons.home_outlined, 2),
            Divider(),
            buildMenuItem('Tech', Icons.computer_outlined, 0),
            Divider(),
            buildMenuItem('Sports', Icons.sports_soccer_outlined, 1),
            Divider(),
            buildMenuItem('Business', Icons.business_center_outlined, 3),
            Divider(),
            buildMenuItem('Health', Icons.heart_broken_outlined, 4),
            Divider(),
          ],
        ),
      ),
    );
  }

  Widget buildProfileImage() {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25.0,
            backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            backgroundColor: Colors.transparent,
          ),
          SizedBox(width: 20.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Name',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Your Subtitle',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Get.back(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMenuItem(String title, IconData icon, int index) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(
        title,
        style: TextStyle(color: Colors.black, fontSize: 24.0),
      ),
      onTap: () {
        Get.find<DashBoardController>().changeTabIndex(index);
        Get.back();
      },
    );
  }
}
