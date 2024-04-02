import 'package:flutter/material.dart';
import 'package:quizer/core/values/text_style.dart';

class ViewAllBtn extends StatelessWidget {
  ViewAllBtn({required this.string, required this.onPressed, super.key});
  final string;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(string, style: style_grey_w500_15),
    );
  }
}
