import 'package:flutter/material.dart';
import 'package:mybookly/core/utils/man_widget/MyImg.dart';
class myloading extends StatefulWidget {
  const myloading({Key? key}) : super(key: key);

  @override
  State<myloading> createState() => _myloadingState();
}

class _myloadingState extends State<myloading> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyImg(width: 100, height: 100, url: "assets/img/ll.gif"),
      ],
    );
  }
}
