import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_again/widgets/custom_button.dart';

class SignInButton extends CustomButton {
  SignInButton(
      {required String text,
      required Color backColor,
      required Color foreColor,
      required VoidCallback onPressed})
      : super(
            child: Text(text),
            foreColor: foreColor,
            backColor: backColor,
            onPressed: onPressed);
}
