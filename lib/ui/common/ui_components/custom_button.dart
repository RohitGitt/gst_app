import 'package:flutter/material.dart';
import 'package:task_one/ui/common/app_colors.dart';
import 'package:task_one/utility/extensions/percentOf.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double? height;
  final String title;
  final Color? titleTextColor;
  final Color? buttonColor;
  final Color? borderColor;
  final double? borderWidth;
  final TextStyle? textStyle;

  final Function? onClick;

  const CustomButton(
      {super.key,
      required this.width,
      this.height,
      required this.title,
      this.titleTextColor,
      this.buttonColor,
      this.borderColor,
      this.borderWidth,
      this.textStyle,
      this.onClick});

  @override
  Widget build(BuildContext context) {
    return VxBox(
            child: title.text
                .textStyle(textStyle ??
                    TextStyle(
                        fontSize: 25,
                        color: titleTextColor ?? Colors.white,
                        fontWeight: FontWeight.bold))
                .make()
                .centered())
        .customRounded(const BorderRadius.all(Radius.circular(8)))
        .width(width)
        .height(height ?? 6.percentageOf(context.screenHeight))
        .border(color: borderColor ?? kcBlackColor, width: borderWidth ?? 1)
        .color(buttonColor ?? kcBlackColor)
        .make().onInkTap(() {
          if(onClick != null){
            onClick!();
          }
        });
  }
}
