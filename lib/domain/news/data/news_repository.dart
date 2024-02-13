import 'package:getx_clean_architecture/domain/news/data/model/news_model.dart';
import 'package:getx_clean_architecture/domain/news/data/news_service.dart';

import '../../../infrastructure/dal/services/api_service.dart';

class NewsRepository extends NewsService {
  final ApiService apiService;
  NewsRepository({required this.apiService});

  Future<NewsModel> _getNews(String category, [int delayInSeconds = 0]) async {
    await Future.delayed(Duration(seconds: delayInSeconds));
    final response = await apiService.reqst(
      url:
          'https://gnews.io/api/v4/top-headlines?category=$category&lang=en&max=10&apikey=92d4d8111149d7725abdc4e602384ce8',
      method: Method.GET,
    );
    print('Response for $category: ${response.data}');
    final newsModel = NewsModel.fromJson(response.data);
    return newsModel;
  }

  @override
  Future<NewsModel> getWorldNews() async {
    return _getNews('world');
  }

  @override
  Future<NewsModel> getTechnologyNews() async {
    return _getNews('technology', 1);
  }

  @override
  Future<NewsModel> getSportsNews() async {
    return _getNews('sports', 2);
  }

  @override
  Future<NewsModel> getBusinessNews() async {
    return _getNews('business', 4);
  }

  @override
  Future<NewsModel> getHealthNews() async {
    return _getNews('health', 5);
  }

  @override
  refreshNews() async {
    getWorldNews();
    getTechnologyNews();
    getSportsNews();
    getBusinessNews();
  }
}
