import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/presentation/Business_news/controllers/Business_news_controller.dart';

class BusinessNewsScreen extends GetView<BusinessNewsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Business News")),);
  }
}
