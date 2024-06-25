import 'package:flutter/material.dart';
import 'package:task_one/ui/common/app_colors.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomTextInputField extends StatefulWidget {
  final double? width;
  final double? height;
  final String? title;
  final Color? textColor ;
  final TextEditingController? controller ; 
  final FocusNode? focusNode ; 
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved ;
  final Color? titleColor;
  final Color? borderColor;
  final Color? focusBorderColor;

  // final TextEditingController controller;

  const CustomTextInputField(
      {super.key,
      this.width,
      this.height,
      this.title,
      this.textColor,
      this.controller,
      this.validator ,
      this.focusNode ,
      this.onSaved ,
      this.titleColor,
      this.borderColor,
      this.focusBorderColor
      
    });

  @override
  State<CustomTextInputField> createState() => _CustomTextInputFieldState();
}

class _CustomTextInputFieldState extends State<CustomTextInputField> {
  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: VStack([
      widget.title?.text
              .textStyle(TextStyle(
                  fontWeight: FontWeight.bold, color: widget.titleColor))
              .make() ??
          "".text.make(),
      const SizedBox(
        height: 2,
      ),
      TextFormField(
        controller: widget.controller,
        focusNode: widget.focusNode,
        validator:widget.validator ,
        onSaved:widget.onSaved ,
        style: TextStyle(color: widget.textColor),
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: widget.focusBorderColor ?? kcBlackColor, width: 2.5)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: widget.borderColor ?? kcBlackColor, width: 2.5))
                    ),
      ).box.height(widget.height ?? 50).make()
    ])).width(widget.width ?? context.screenWidth).make();
  }
}
