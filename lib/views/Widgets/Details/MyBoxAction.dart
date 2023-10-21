import 'package:flutter/material.dart';
import 'package:mybookly/core/utils/man_widget/mytext.dart';
import 'package:mybookly/views/Widgets/Details/comment.dart';
class MyBoxAction extends StatefulWidget {
  final String id;
  const MyBoxAction({Key? key, required this.id}) : super(key: key);

  @override
  State<MyBoxAction> createState() => _MyBoxActionState();
}

class _MyBoxActionState extends State<MyBoxAction> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5)
      ),

      child: ExpansionTile(
            backgroundColor: Colors.white,
            title: MyText(color: Colors.black, text: 'التعليقات', size: 25),
          children: [
            Container(
                height: 500,
                child: Comment(id: widget.id))
          ],),
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
              borderRadius: BorderRadius.circular(5)
          ),

          child: ExpansionTile(
            collapsedIconColor: Colors.white,
            backgroundColor: Colors.deepOrangeAccent,
            title: MyText(color: Colors.white, text: 'المصادر '
                , size: 25),
            children: [
              MyText(color: Colors.white, text: 'موقع ويكيبديا '
                  , size: 25),

            ],),
        ),
      ],
    );
  }
}
