import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final Color backColor;
  final Color foreColor;
  final double borderRadius;
  final VoidCallback onPressed;

  const CustomButton(
      {required this.child,
      required this.foreColor,
      required this.backColor,
      this.borderRadius = 16,
      required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(borderRadius),
              ),
            ),
          ),
          elevation: MaterialStateProperty.all(4),
          backgroundColor: MaterialStateProperty.all(backColor),
          foregroundColor: MaterialStateProperty.all(foreColor)),
      onPressed: onPressed,
      child: child,
    );
  }
}
