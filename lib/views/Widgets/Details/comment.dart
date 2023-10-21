import 'package:comment_box/comment/comment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mybookly/core/utils/man_widget/blkLoad.dart';
import 'package:mybookly/feature/data/Comment/comment_cubit.dart';
import 'package:mybookly/feature/data/models/mydata.dart';

import '../../../core/utils/man_widget/myloading.dart';
import '../CustomError.dart';


class Comment extends StatefulWidget {
  final String id;
  const Comment({Key? key, required this.id}) : super(key: key);

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {

   return Material(

      child: Container(
        height: 100,
        child: CommentBox(
          userImage: CommentBox.commentImageParser(
              imageURLorPath: "assets/img/userpic.jpg"),
          child: commentChild(widget.id),
          labelText: 'Write a comment...',
          errorText: 'Comment cannot be blank',
          withBorder: false,

          sendButtonMethod: () {
            if (formKey.currentState!.validate()) {
              print(commentController.text);
              setState(() {
                mydata.AddComment(widget.id, commentController.text);
              });
              commentController.clear();
              FocusScope.of(context).unfocus();
            } else {
              print("Not validated");
            }
          },
          formKey: formKey,
          commentController: commentController,
          backgroundColor: Colors.white,
          textColor: Colors.grey,
          sendWidget: Icon(Icons.send_sharp, size: 30, color: Colors.black),
        ),
      ),
    );

  }
}


Widget commentChild(String id) {
  return BlocBuilder<CommentCubit, CommentState>(
    builder: (context, state) {
      if(state is CommentSuccess) {
        CommentCubit(mydata()).mydatafetch(id);
        return ListView(
          children: [
            for (var i = 0; i < state.comment.length; i++)
              Padding(
                padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
                child: ListTile(
                  leading: GestureDetector(
                    onTap: () async {
                      // Display the image in large form.
                      print("Comment Clicked");
                    },
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: new BoxDecoration(
                          color: Colors.blue,
                          borderRadius: new BorderRadius.all(Radius.circular(
                              50))),
                      child: CircleAvatar(
                        radius: 50,

                      ),
                    ),
                  ),
                  title: Text(
                    state.comment[i].user.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    state.comment[i].commentText.toString(),),
                  trailing: Text(
                      '', style: TextStyle(fontSize: 10)),

                ),
              )
          ],
        );
      }
      else   if(state is CommentFaillure) {
        return CustomError(errText: state.reeMessage);
      }else
      {return blkLoad();}

    },
  );
}
