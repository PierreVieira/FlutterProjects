import 'package:flutter/material.dart';
import 'package:payflow/shared/routes.dart';
import 'package:payflow/shared/themes/app_colors.dart';

import 'modules/home/home_page.dart';
import 'modules/login/login_page.dart';
import 'modules/splash/splash_page.dart';

const _title = 'Flutter App';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primaryColor: AppColors.primary,
      ),
      initialRoute: Routes.splash.name,
      routes: _getRoutes(context, mapRoutes()),
    );
  }

  Map<String, WidgetBuilder> _getRoutes(
          BuildContext context, Map<Routes, Widget> mapRoutes) =>
      mapRoutes.map((key, value) => MapEntry(key.name, (context) => value));

  Map<Routes, Widget> mapRoutes() => {
        Routes.splash: const SplashPage(),
        Routes.home: const HomePage(),
        Routes.login: const LoginPage(),
      };
}
