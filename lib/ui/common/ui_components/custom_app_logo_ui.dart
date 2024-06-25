import 'package:flutter/material.dart';
import 'package:task_one/ui/common/app_colors.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomAppLogoUi extends StatelessWidget {
  final String imagePath;
  final double width;
  final Color? imageBgColor;
  final Color? containerBgColor;

  const CustomAppLogoUi(
      {super.key,
      required this.width,
      required this.imagePath,
      this.imageBgColor,
      this.containerBgColor});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      color: imageBgColor ?? Colors.white,
      imagePath,
      width: width,
      fit: BoxFit.cover,
    ).box.roundedFull.color(containerBgColor ?? kcBlackColor).make();
  }
}
