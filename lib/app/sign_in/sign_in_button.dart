import 'package:flutter/painting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_again/widgets/custom_button.dart';

class SignInButton extends CustomButton {
  SignInButton({
    required String text,
    required Color backColor,
    required Color foreColor,
    required VoidCallback onPressed,
    String? imagePath,
  }) : super(
            child: (imagePath == null)
                ? Text(
                    text,
                  )
                : Row(children: [
                    Expanded(
                      flex: 1,
                      child: Image.asset(imagePath),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        text,
                      ),
                    )
                  ]),
            foreColor: foreColor,
            backColor: backColor,
            onPressed: onPressed);
}
