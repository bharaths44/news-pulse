// To parse this JSON data, do
//
//     final NewsModel = newsModelFromJson(jsonString);

import 'dart:convert';

NewsModel newsModelFromJson(String str) => NewsModel.fromJson(json.decode(str));

String newsModelToJson(NewsModel data) => json.encode(data.toJson());

class NewsModel {
  final int? totalArticles;
  final List<Article>? articles;

  NewsModel({
    this.totalArticles,
    this.articles,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        totalArticles: json["totalArticles"],
        articles: json["articles"] == null
            ? []
            : List<Article>.from(
                json["articles"]!.map((x) => Article.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "totalArticles": totalArticles,
        "articles": articles == null
            ? []
            : List<dynamic>.from(articles!.map((x) => x.toJson())),
      };
}

class Article {
  final String? title;
  final String? description;
  final String? content;
  final String? url;
  final String? image;
  final DateTime? publishedAt;
  final Source? source;

  Article({
    this.title,
    this.description,
    this.content,
    this.url,
    this.image,
    this.publishedAt,
    this.source,
  });

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        title: json["title"],
        description: json["description"],
        content: json["content"],
        url: json["url"],
        image: json["image"],
        publishedAt: json["publishedAt"] == null
            ? null
            : DateTime.parse(json["publishedAt"]),
        source: json["source"] == null ? null : Source.fromJson(json["source"]),
      );

  get articles => null;

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "content": content,
        "url": url,
        "image": image,
        "publishedAt": publishedAt?.toIso8601String(),
        "source": source?.toJson(),
      };
}

class Source {
  final String? name;
  final String? url;

  Source({
    this.name,
    this.url,
  });

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "url": url,
      };
}
