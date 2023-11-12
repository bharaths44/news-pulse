import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/presentation/sports_news/controllers/sports_news_controller.dart';

class SportsNewsScreen extends GetView<SportsNewsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Sports screen")),
    );
  }
}
