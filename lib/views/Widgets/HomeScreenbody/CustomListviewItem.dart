import 'package:mybookly/core/utils/man_widget/mytext.dart';
import 'package:mybookly/core/utils/myassets.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../feature/data/models/material.dart';
import '../../Screen/BookDetails.dart';
class CustomListviewItem extends StatelessWidget {
  final MyMaterial mymateriail;
final int width;  const CustomListviewItem({Key? key, required this.mymateriail, required this.width,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(BookDetails(myMaterial:mymateriail,));
      },

      child: SizedBox(
        child: AspectRatio(
          aspectRatio: 2.7 /width,
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),  // height: MediaQuery.of(context).size.height*.25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        fit: BoxFit.fill, image: NetworkImage("https://edu.tpowep.com/uploads/"+mymateriail.img.toString()))),
              ),
              Align(
                alignment:  Alignment.bottomCenter,
                child: Container(
                  height: 33,
                  alignment: Alignment.bottomCenter,
                  color: Colors.white.withOpacity(0.7),
                  child: MyText(color: Colors.black, text: mymateriail.address.toString(), size: 14),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
