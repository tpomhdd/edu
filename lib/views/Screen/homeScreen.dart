import 'package:flutter/material.dart';

import '../Widgets/HomeScreenbody.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: const Scaffold(
        body: HomeScreenbody(),

      ),
    );
  }
}
