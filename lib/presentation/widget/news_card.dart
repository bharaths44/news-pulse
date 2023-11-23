import 'package:flutter/material.dart';

class NewsArticleCard extends StatelessWidget {
  final String? imageURL;
  final String? title;
  final String? description;

  NewsArticleCard({Key? key, this.imageURL, this.title, this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double unitHeightValue = MediaQuery.of(context).size.height * 0.01;
    final double multiplier1 = 2.5;
    final double multiplier2 = 1.7;
    return Card(
      child: InkWell(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                child: Image.network(
                  imageURL!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              title!,
              softWrap: true,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: multiplier1 * unitHeightValue),
            ),
            Text(
              description!,
              softWrap: true,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: multiplier2 * unitHeightValue),
            )
          ],
        ),
      ),
    );
  }
}
