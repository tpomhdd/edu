import 'package:flutter/material.dart';

import '../Widgets/SplashViewBody/SplashViewBody.dart';
class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewBody(),
    );
  }
}
