import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mybookly/core/utils/man_widget/MyImg.dart';
import 'package:mybookly/core/utils/man_widget/mytext.dart';
import 'package:mybookly/core/utils/myassets.dart';
import 'package:mybookly/views/Widgets/HomeScreenbody/Item.dart';

import 'HomeScreenbody/FeaturedBooksListView.dart';
import 'HomeScreenbody/FeaturedItemListView.dart';
import 'HomeScreenbody/myappbar.dart';

class HomeScreenbody extends StatefulWidget {
  const HomeScreenbody({Key? key}) : super(key: key);

  @override
  State<HomeScreenbody> createState() => _HomeScreenbodyState();
}

class _HomeScreenbodyState extends State<HomeScreenbody> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:Column(
            children: [
              myappbar(),
              FeaturedBooksListView(height_list:  MediaQuery.of(context).size.height * .3, wdith: 4,),
              Row(
                children: [
                  MyText(
                    color: Colors.white,
                    text: 'اخر المقالات',
                    size: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
            ],
          ) ,
        ),
        SliverToBoxAdapter(child: FeaturedItemListView())

      ],
    );

  }
}
