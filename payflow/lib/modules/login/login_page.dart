import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/social_login_button.dart';

import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final controller = LoginController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.36,
              color: AppColors.primary,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32, bottom: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImages.person,
                    height: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32),
                    child: Image.asset(AppImages.logoMini),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 24, left: 64, right: 64),
                    child: Text(
                      "Organize seus boletos em um só lugar",
                      textAlign: TextAlign.center,
                      style: TextStyles.titleHome,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40, right: 40, top: 40),
                    child: SocialLoginButton(
                      onTap: () => controller.googleSignIn(context),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
