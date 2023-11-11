import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_clean_architecture/presentation/widgets/bottomnavbar/bottomnavbar.dart';
import 'package:getx_clean_architecture/presentation/widgets/bottomnavbar/controller/bottomnavbarcontroller.dart';

import 'controllers/home.controller.dart';

final BottomNavigationBarController controller1 =
    Get.find<BottomNavigationBarController>();

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: BottomNavigationBarWidget(controller: controller1),
      appBar: AppBar(
        title: Text(controller.data),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HomeScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
