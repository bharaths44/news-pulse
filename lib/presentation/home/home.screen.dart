import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/presentation/home/controllers/home.controller.dart';

import '../widget/news_card.dart';

class HomeScreen extends StatelessWidget {
  final HomeController controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        final newsModel = controller.newsModel.value;

        if (newsModel == null) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return ListView.builder(
            itemCount: newsModel.articles?.length,
            itemBuilder: (context, index) {
              final newsArticle = newsModel.articles?[index];

              return NewsArticleCard(
                imageURL: '${newsArticle?.image}',
                url: newsArticle?.url!,
                title: newsArticle!.title!,
                description: newsArticle.description!,
              );
            },
          );
        }
      }),
    );
  }
}
