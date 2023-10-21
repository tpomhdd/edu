import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mybookly/core/utils/man_widget/mytext.dart';

import 'package:mybookly/feature/data/models/Comments.dart';
import 'package:mybookly/views/Widgets/Details/MyBoxAction.dart';
import 'package:mybookly/views/Widgets/Details/btnplaye.dart';
import 'package:mybookly/views/Widgets/Details/comment.dart';

import 'package:mybookly/views/Widgets/HomeScreenbody/star_ritoing.dart';
import 'package:mybookly/views/Widgets/Search/Widgets/SearchViewBody.dart';



import '../../../core/utils/man_widget/img_list.dart';
import '../../../feature/data/models/material.dart';
import '../HomeScreenbody/FeaturedBooksListView.dart';
import 'book_details_appbar.dart';
class book_details_view_body extends StatefulWidget {
  final MyMaterial myMaterial;
  const book_details_view_body({Key? key, required this.myMaterial}) : super(key: key);

  @override
  State<book_details_view_body> createState() => _book_details_view_bodyState();
}

class _book_details_view_bodyState extends State<book_details_view_body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          book_details_appbar(),

          Img_List(img_url: "https://edu.tpowep.com/uploads/" +
          widget.myMaterial.img.toString(), img_height: 300,),
          SizedBox(height: 10,),
          MyText(color: Colors.white, text: widget.myMaterial.address.toString(), size: 33,fontWeight: FontWeight.w500,),
          SizedBox(height: 10,),
          Opacity(opacity: 0.7,

          child: MyText(color: Colors.white, text:widget.myMaterial.categorie.toString(), size: 20,fontWeight: FontWeight.w500,)),
          SizedBox(height: 10,),
          btnplay(url: widget.myMaterial.link.toString(), size: 50),
          SizedBox(height: 20,),

          MyBoxAction(id: widget.myMaterial.id.toString()),


          SizedBox(height: 50,),
          Row(
            children: [
              MyText(color: Colors.white, text:"You can also like", size: 15,fontWeight: FontWeight.w400,)
            ],
          ),
          FeaturedBooksListView(height_list: 150, wdith: 3,),
        ],
      ),
    );
  }
}

