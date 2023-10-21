import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mybookly/core/utils/Services.dart';
import 'package:mybookly/core/utils/man_widget/MyImg.dart';
import 'package:mybookly/core/utils/myassets.dart';
import 'package:mybookly/views/Screen/homeScreen.dart';
class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
@override
  void initState() {
    // TODO: implement initState
  MYServives.mytransilation(HomeScreen(), 1, Transition.downToUp);  super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FadeInDown(
          duration: Duration(seconds: 2),
            child: MyImg(width: 255, height: 255, url:"assets/img/logo.png")),
   //////////     FadeTransition(opacity: Opacity(opacity: opacity))
        
      ],
    );
  }
}
