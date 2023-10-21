import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../views/Screen/homeScreen.dart';

class MYServives{
 static void mytransilation( StatefulWidget page,int myDuration,
      Transition translations){
    Future.delayed(const Duration(seconds: 2),(){
      Get.to(()=>page,transition: translations,duration: Duration(seconds: myDuration));
    });

  }
}