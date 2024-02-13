import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/presentation/news_screens/tech_news/controllers/tech_news_controller.dart';

class TechNewsScreen extends GetView<TechNewsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("TechNews")),
    );
  }
}
