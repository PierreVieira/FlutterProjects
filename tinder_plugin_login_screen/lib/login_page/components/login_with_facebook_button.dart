import 'package:flutter/material.dart';
import 'package:tinder_login/layout/my_colors.dart';

class LoginWithFacebookButton extends StatelessWidget {
  static const String _textData = 'Login with Facebook';

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {},
      color: MyColors.whiteFlame,
      textColor: MyColors.primary,
      child: Text(_textData),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
    );
  }
}
