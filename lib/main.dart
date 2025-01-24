// import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:get/get.dart';
// import 'package:getx_clean_architecture/generated/locales.g.dart';

// import 'domain/core/di/dependancy.dart';
// import 'infrastructure/navigation/bindings/controllers/controllers_bindings.dart';
// import 'infrastructure/navigation/bindings/controllers/home.controller.binding.dart';
// import 'infrastructure/navigation/navigation.dart';
// import 'infrastructure/navigation/routes.dart';

// void main() async {
//   var initialRoute = await Routes.initialRoute;
//   DependencyCreator.init();
//   runApp(Main(initialRoute));
// }

// class Main extends StatelessWidget {
//   final String initialRoute;

//   Main(this.initialRoute);

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       initialRoute: initialRoute,
//       getPages: Nav.routes,
//       initialBinding: HomeControllerBinding(),

//       debugShowCheckedModeBanner: false,
//       translationsKeys: AppTranslation.translations,
//       localizationsDelegates: GlobalMaterialLocalizations.delegates,
//       supportedLocales: [
//         Locale('en', 'US'),
//       ],
//       locale: Locale('en', 'US'),
//       fallbackLocale: Locale('en', 'US'),

//       ///for custom themes
//       //theme: AppThemes.light,
//       // darkTheme: AppThemes.light,
//       // themeMode: ThemeMode.system,
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/domain/core/di/dependancy.dart';
import 'package:getx_clean_architecture/infrastructure/navigation/navigation.dart';
import 'package:getx_clean_architecture/infrastructure/navigation/routes.dart';
import 'package:getx_clean_architecture/presentation/auth/register/register_screen.dart';

void main() {
  runApp(MyApp());
  DependencyCreator.init();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'News Pulse',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fade,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'),
      ],
      initialRoute: Routes.dashboard,
      getPages: [
        ...Nav.routes,
        GetPage(
          name: '/register',
          page: () => RegisterScreen(),
          transition: Transition.rightToLeft,
        ),
      ],
    );
  }
}
