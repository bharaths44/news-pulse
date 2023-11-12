import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/generated/locales.g.dart';


import 'domain/core/di/dependancy.dart';
import 'infrastructure/navigation/navigation.dart';
import 'infrastructure/navigation/routes.dart';

void main() async {
  var initialRoute = await Routes.initialRoute;
  DependencyCreator.init();
  runApp(Main(initialRoute));
}

class Main extends StatelessWidget {
  final String initialRoute;

  Main(this.initialRoute);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: initialRoute,
      getPages: Nav.routes,
      debugShowCheckedModeBanner: false,
      translationsKeys: AppTranslation.translations,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: [
        Locale('en', 'US'),
      ],
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),

      ///for custom themes
      //theme: AppThemes.light,
      // darkTheme: AppThemes.light,
      // themeMode: ThemeMode.system,
    );
  }
}
