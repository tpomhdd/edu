import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



import '../../feature/data/Comment/comment_cubit.dart';
import '../../feature/data/models/material.dart';
import '../../feature/data/models/mydata.dart';
import '../Widgets/Details/book_details_view_body.dart';

class BookDetails extends StatefulWidget {
final MyMaterial myMaterial;  const BookDetails({Key? key, required this.myMaterial}) : super(key: key);

  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
@override
  void initState() {

  // TODO: implement initState
    super.initState();
  }  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(child: book_details_view_body(myMaterial: widget.myMaterial,)),
      ),
    );
  }
}
