import 'package:flutter/material.dart';
import 'package:tinder_login/layout/my_colors.dart';
import 'package:tinder_login/login_page/components/login_with_facebook_button.dart';
import 'package:tinder_login/login_page/components/white_text.dart';

import 'components/logo_image.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyLoginPage(),
    );
  }
}

class BodyLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: MyColors.primary,
      child: MyColumn(),
    );
  }
}

class MyColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LogoImage(),
        SizedBox(height: 24),
        WhiteText(
          'Location Changer',
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: 16),
        WhiteText(
          'Plugin app for Tinder',
          size: 13,
        ),
        SizedBox(height: 24),
        LoginWithFacebookButton()
      ],
    );
  }
}
