import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {

  final TextEditingController textController;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? hintColor;

  const CustomText({
    super.key,
    required this.textController,
    this.textColor, 
    this.fontSize,
    this.fontWeight, this.hintColor,
  
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,

      style: TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
   
    );
  }
}