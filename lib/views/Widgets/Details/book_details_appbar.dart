import 'package:flutter/material.dart';

class book_details_appbar extends StatefulWidget {
  const book_details_appbar({Key? key}) : super(key: key);

  @override
  State<book_details_appbar> createState() => _book_details_appbarState();
}

class _book_details_appbarState extends State<book_details_appbar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.close,size: 22,color: Colors.white,)
      ],
    );
  }
}
