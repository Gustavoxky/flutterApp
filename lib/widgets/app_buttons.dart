import 'package:eu/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  String? text;
  IconData? icon;
  double size;
  bool? isIcon;
  final Color borderColor;
  AppButtons(
      {super.key,
      this.text = 'hi',
      this.icon,
      this.isIcon = false,
      required this.backgroundColor,
      required this.borderColor,
      required this.color,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(15),
          color: backgroundColor,
          ),
          child: isIcon == false ? Center(child: AppText(text: text!, color: color,)) : Center(child: Icon(icon, color: color,)),
    );
  }
}
