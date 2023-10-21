

import 'package:flutter/material.dart';
import 'package:star_rating/star_rating.dart';
class myStarRating extends StatefulWidget {
  final double rating;
  const myStarRating({Key? key, required this.rating}) : super(key: key);

  @override
  State<myStarRating> createState() => _myStarRatingState();
}

class _myStarRatingState extends State<myStarRating> {
  @override
  Widget build(BuildContext context) {
    return StarRating(
      mainAxisAlignment: MainAxisAlignment.center,

      length: 5,
      color: Colors.amber,
      rating: widget.rating,
      between: 5,
      starSize: 15,
      onRaitingTap: (rating) {


      },
    );
  }
}
