import 'package:getx_clean_architecture/domain/news/data/model/news_model.dart';

abstract class NewsService {
  /// Calls the https://gnews.io/api/v4/top-headlines?category=world&lang=en&max=10&apikey={KEY}
  ///
  /// Throws a [ServerException] for all error codes.
  Future<NewsModel> getWorldNews();

  /// Calls the https://gnews.io/api/v4/top-headlines?category=technology&lang=en&max=10&apikey={KEY}
  ///
  /// Throws a [ServerException] for all error codes.
  Future<NewsModel> getTechnologyNews();

  /// Calls the https://gnews.io/api/v4/top-headlines?category=sports&lang=en&max=10&apikey={KEY}
  ///
  /// Throws a [ServerException] for all error codes.
  Future<NewsModel> getSportsNews();

  /// Calls the https://gnews.io/api/v4/top-headlines?lang=en&max=10&apikey={KEY}
  ///
  /// Throws a [ServerException] for all error codes.
  Future<NewsModel> getBusinessNews();

  /// Calls the https://gnews.io/api/v4/top-headlines?category=healthlang=en&max=10&apikey={KEY}
   Future<NewsModel> getHealthNews();

   refreshNews();
}
