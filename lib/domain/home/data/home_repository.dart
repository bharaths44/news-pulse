import 'package:get/get.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:getx_clean_architecture/core/utility.dart';
import 'package:getx_clean_architecture/domain/home/data/home_service.dart';
import 'package:getx_clean_architecture/infrastructure/dal/services/api_service.dart';

class HomeRepository implements HomeService {
  ApiService apiService = Get.find();

  @override
  Future<dynamic> getData() async {
    print("on repository");
    try {
      final result = await apiService.reqst(url: '');

      if (result != null) {
        if (result is Response) {
          return Future.value(result);
        }
      } else {
        return;
      }
    } on Exception catch (e) {
      Utility.showErrorSnackBar("$e");
    }
    return;
  }
}
