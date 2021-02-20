import 'package:flutter/material.dart';

import '../login_page/login_page.dart';
import 'my_colors.dart';

class TinderChangeLocationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: MyColors.primary
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
