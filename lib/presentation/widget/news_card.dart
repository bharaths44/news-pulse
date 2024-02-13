import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher_string.dart';

class NewsArticleCard extends StatelessWidget {
  final String? imageURL;
  final String? title;
  final String? description;
  final String? url;
  Future<void> _launchURL() async {
    if (await canLaunchUrlString(url!)) {
      await launchUrlString(
        url!,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  NewsArticleCard(
      {Key? key, this.imageURL, this.title, this.description, this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _launchURL,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
                child: Image.network(
                  imageURL!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    description!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold),
                  ),
                  Text('Click to know more',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
