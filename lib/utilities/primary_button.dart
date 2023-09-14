import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key, required this.text, required this.width, required this.height, required this.backgroundColor,
  });

  final Widget text;
  final double width;
  final double height;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          minimumSize: Size(width, height)
      ),
      onPressed: () {},
      child: text,
    );
  }
}
