import 'package:get/get.dart';
import 'package:getx_clean_architecture/core/utility.dart';
import 'package:getx_clean_architecture/domain/news/data/model/news_model.dart';
import 'package:getx_clean_architecture/domain/news/data/news_repository.dart';

class SportsNewsController extends GetxController {
  final NewsRepository newsRep;

  SportsNewsController({required this.newsRep});

  final Rx<NewsModel?> newsModel = Rx<NewsModel?>(null);

  Future<void> fetchSportsNews() async {
    try {
      final newsModel = await newsRep.getBusinessNews();
      this.newsModel.value = newsModel;
    } on Exception catch (e) {
      Utility.showErrorSnackBar('$e');
    }
  }

  @override
  void onInit() {
    super.onInit();
    fetchSportsNews();
  }
}
