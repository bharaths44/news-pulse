import 'package:getx_clean_architecture/domain/news/data/model/news_model.dart';
import 'package:getx_clean_architecture/domain/news/data/news_service.dart';
import 'package:getx_clean_architecture/infrastructure/dal/services/api_service.dart';

class NewsRepository extends NewsService {
  final ApiService apiService;
  NewsRepository({required this.apiService});

  @override
  Future<NewsModel> getWorldNews() async {
    final response = await apiService.reqst(
      url:
          'https://gnews.io/api/v4/top-headlines?category=world&lang=en&max=10&apikey=92d4d8111149d7725abdc4e602384ce8',
      method: Method.GET,
    );

    final newsModel = NewsModel.fromJson(response.data);
    return newsModel;
  }

  @override
  Future<NewsModel> getTechnologyNews() async {
    final response = await apiService.reqst(
      url:
          'https://gnews.io/api/v4/top-headlines?category=technology&lang=en&max=10&apikey=92d4d8111149d7725abdc4e602384ce8',
      method: Method.GET,
    );

    final newsModel = NewsModel.fromJson(response.data);
    return newsModel;
  }

  @override
  Future<NewsModel> getSportsNews() async {
    final response = await apiService.reqst(
      url:
          'https://gnews.io/api/v4/top-headlines?category=sports&lang=en&max=10&apikey=92d4d8111149d7725abdc4e602384ce8',
      method: Method.GET,
    );

    final newsModel = NewsModel.fromJson(response.data);
    return newsModel;
  }

  @override
  Future<NewsModel> getBusinessNews() async {
    final response = await apiService.reqst(
      url:
          'https://gnews.io/api/v4/top-headlines?category=business&lang=en&max=10&apikey=92d4d8111149d7725abdc4e602384ce8',
      method: Method.GET,
    );

    final newsModel = NewsModel.fromJson(response.data);
    return newsModel;
  }
}
