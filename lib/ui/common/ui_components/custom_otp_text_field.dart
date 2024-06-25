import 'package:flutter/material.dart';
import 'package:task_one/ui/common/app_colors.dart';
import 'package:task_one/utility/extensions/percentOf.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomOTPTextField extends StatefulWidget {
  final double? width;
  final double? height;
  final TextEditingController? controller;
  final FocusNode focusNode ; 
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved ;
  final void Function(String)? onChanged ;
  final Color? focusBorderColor ;

  const CustomOTPTextField(
      {super.key, this.width, this.height, required this.controller , required this.focusNode , this.onChanged , this.focusBorderColor , this.onSaved , this.validator});

  @override
  State<CustomOTPTextField> createState() => _CustomOTPTextFieldState();
}

class _CustomOTPTextFieldState extends State<CustomOTPTextField> {
  @override
  Widget build(BuildContext context) {
    return VxBox(
            child: TextFormField(
                controller: widget.controller,
                focusNode: widget.focusNode,
                onSaved: widget.onSaved,
                validator: widget.validator,
                onChanged: widget.onChanged,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color:widget.focusBorderColor ?? kcBlackColor, width: 2.5)
                    ),
                    enabledBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: kcBlackColor, width: 2.5)))))
        .width(widget.width ?? 13.percentageOf(context.screenWidth))
        .height(widget.height ?? 6.percentageOf(context.screenHeight))
        .make();
  }
}
