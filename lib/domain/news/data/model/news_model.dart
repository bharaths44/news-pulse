class NewsModel {
  int totalArticles;
  List<Article> articles;

  NewsModel({required this.totalArticles, required this.articles});

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    var articleList = json['articles'] as List<dynamic>;
    List<Article> articles = articleList.map((article) {
      return Article.fromJson(article);
    }).toList();

    return NewsModel(
      totalArticles: json['totalArticles'],
      articles: articles,
    );
  }
}

class Article {
  String title;
  String description;
  String content;
  String url;
  String image;
  DateTime publishedAt;
  Source source;

  Article({
    required this.title,
    required this.description,
    required this.content,
    required this.url,
    required this.image,
    required this.publishedAt,
    required this.source,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      title: json['title'],
      description: json['description'],
      content: json['content'],
      url: json['url'],
      image: json['image'],
      publishedAt: DateTime.parse(json['publishedAt']),
      source: Source.fromJson(json['source']),
    );
  }
}

class Source {
  String name;
  String url;

  Source({
    required this.name,
    required this.url,
  });

  factory Source.fromJson(Map<String, dynamic> json) {
    return Source(
      name: json['name'],
      url: json['url'],
    );
  }
}
