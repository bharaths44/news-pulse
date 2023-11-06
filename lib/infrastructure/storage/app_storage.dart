import 'package:get_storage/get_storage.dart';

class AppStorage {
  static const accessToken = "access_token";
  static const isLoggedin = "is_logged_in";
  static const tokenType = "token_type";

  AppStorage() {
    GetStorage.init();
  }

  GetStorage storage = GetStorage();

  void writeAccessToken(String value) async {
    await storage.write(AppStorage.accessToken, value);
  }

  String getAccessToken() {
    return storage.read(AppStorage.accessToken) ?? "";
  }

  void writeIsLoggedIn(bool value) async {
    await storage.write(AppStorage.isLoggedin, value);
  }

  bool isLoggedIn() {
    return storage.read(AppStorage.isLoggedin) ?? false;
  }

  void writeTokenType(String value) async {
    await storage.write(AppStorage.tokenType, value);
  }

  String getTokenType() {
    return storage.read(AppStorage.tokenType) ?? "";
  }

  void clearValues() async {
    await storage.erase();
  }
}
