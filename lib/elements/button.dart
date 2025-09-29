import 'package:burger_hunter/elements/colorAsset.dart';
import 'package:burger_hunter/elements/textAssets.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Text buttonText;
  Icon buttonIcon;
  EdgeInsets padding;
  VoidCallback onPressed;

  Button({
    super.key,
    required this.buttonText,
    required this.buttonIcon,
    required this.padding,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: padding,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Row(spacing: 20, children: [buttonText, buttonIcon]),
    );
  }
}
