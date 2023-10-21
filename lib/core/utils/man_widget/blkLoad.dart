import 'package:flutter/material.dart';

import 'MyImg.dart';
class blkLoad extends StatefulWidget {
  const blkLoad({Key? key}) : super(key: key);

  @override
  State<blkLoad> createState() => _blkLoadState();
}

class _blkLoadState extends State<blkLoad> {
  @override
  Widget build(BuildContext context) {
    return Center(child: MyImg(width: 50, height: 50, url: "assets/img/blkload.gif"));
  }
}
