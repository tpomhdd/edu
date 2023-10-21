import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mybookly/core/utils/man_widget/img_list.dart';
import 'package:mybookly/core/utils/man_widget/mytext.dart';
import 'package:mybookly/core/utils/myassets.dart';
import 'package:flutter/material.dart';

import 'package:mybookly/views/Screen/BookDetails.dart';
import 'package:mybookly/views/Widgets/HomeScreenbody/star_ritoing.dart';
import 'package:get/get.dart';

import '../../../feature/data/Comment/comment_cubit.dart';
import '../../../feature/data/models/material.dart';
import '../../../feature/data/models/mydata.dart';

class item_material extends StatefulWidget {
  final MyMaterial myMaterial;

  const item_material({Key? key, required this.myMaterial}) : super(key: key);

  @override
  State<item_material> createState() => _item_materialState();
}

class _item_materialState extends State<item_material> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(
            BlocProvider(
          create: (context) =>

          CommentCubit(mydata())..mydatafetch(widget.myMaterial.id.toString()),

          child: BookDetails(myMaterial: widget.myMaterial,),
        ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Img_List(img_url: "https://edu.tpowep.com/uploads/" +
                widget.myMaterial.img.toString(), img_height: 100,),
          ),
          SizedBox(
            width: 22,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  color: Colors.white,
                  text: widget.myMaterial.address.toString(),
                  size: 14,
                  fontWeight: FontWeight.w700,
                ),
                MyText(
                  color: Colors.white,
                  text: widget.myMaterial.categorie.toString(),
                  size: 10,
                  fontWeight: FontWeight.w700,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [

                     const Spacer(),
      //              myStarRating(rating: double.parse(widget.myMaterial.rating.toString()),),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
