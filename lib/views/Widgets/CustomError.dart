import 'package:flutter/material.dart';
import 'package:mybookly/core/utils/man_widget/mytext.dart';
class CustomError extends StatelessWidget {
  final String errText;
  const CustomError({Key? key, required this.errText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyText(color: Colors.red,text: errText,size: 20,);
  }
}
