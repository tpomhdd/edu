import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mybookly/views/Widgets/Search/views/SearchView.dart';

import '../../../core/utils/man_widget/MyImg.dart';
import 'package:mybookly/core/utils/myassets.dart';

import 'package:get/get.dart';
class myappbar extends StatelessWidget {
  const myappbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Row(
        children: [
          MyImg(width: 155, height: 100, url: myassets.logo),
          const Spacer(),
          IconButton(
              onPressed: () {
                Get.to(SearchView());
              },
              color: Colors.white,
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 30,
              ))
        ],
      ),
    );
  }
}
