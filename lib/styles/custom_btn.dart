import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final Color? color;
  final VoidCallback? onpressed;
  final Size? size;
  final Color? textcolor;
  final TextStyle? style;
  const CustomButton(
      {super.key,
      this.style,
      this.color,
      this.onpressed,
      this.size,
      this.text,
      this.textcolor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: textcolor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          minimumSize: size),
      onPressed: onpressed,
      child: Text(text!,style: style,),
    );
  }
}
