import 'dart:convert';

import 'package:getx_clean_architecture/domain/news/data/model/news_model.dart';
import 'package:http/http.dart' as http;

abstract class NewsRemoteDataSource {
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
}

class NewsRemoteDataSourceImpl implements NewsRemoteDataSource {
  final http.Client client;
  final String apiKey = "92d4d8111149d7725abdc4e602384ce8";

  NewsRemoteDataSourceImpl({required this.client});

  @override
  Future<NewsModel> getWorldNews() async {
    final url = Uri.parse(
        'https://gnews.io/api/v4/top-headlines?category=world&lang=en&max=10&apikey=$apiKey');

    try {
      final response = await client.get(url);

      if (response.statusCode == 200) {
        return NewsModel.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to load world news');
      }
    } catch (error) {
      throw Exception('Failed to load world news due to network error');
    }
  }

  @override
  Future<NewsModel> getTechnologyNews() async {
    final url = Uri.parse(
        'https://gnews.io/api/v4/top-headlines?category=technology&lang=en&max=10&apikey=$apiKey');

    try {
      final response = await client.get(url);

      if (response.statusCode == 200) {
        return NewsModel.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to load technology news');
      }
    } catch (error) {
      throw Exception('Failed to load technology news due to network error');
    }
  }

  @override
  Future<NewsModel> getSportsNews() async {
    final url = Uri.parse(
        'https://gnews.io/api/v4/top-headlines?category=sports&lang=en&max=10&apikey=$apiKey');

    try {
      final response = await client.get(url);

      if (response.statusCode == 200) {
        return NewsModel.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to load sports news');
      }
    } catch (error) {
      throw Exception('Failed to load sports news due to network error');
    }
  }

  @override
  Future<NewsModel> getBusinessNews() async {
    final url = Uri.parse(
        'https://gnews.io/api/v4/top-headlines?category=businesslang=en&max=10&apikey=$apiKey');

    try {
      final response = await client.get(url);

      if (response.statusCode == 200) {
        return NewsModel.fromJson(json.decode(response.body));
      } else {
        throw Exception('Failed to load news');
      }
    } catch (error) {
      throw Exception('Failed to load news due to network error');
    }
  }
}
