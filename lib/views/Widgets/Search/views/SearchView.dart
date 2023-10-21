import 'package:flutter/material.dart';
import 'package:mybookly/core/utils/man_widget/mytext.dart';
import 'package:mybookly/views/Widgets/HomeScreenbody/FeaturedItemListView.dart';

import '../Widgets/SearchViewBody.dart';
class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child: Column(
        children: [
          SearchTextField(),
          Expanded(child: FeaturedItemListView())
        ],
      )),


    );
  }
}
