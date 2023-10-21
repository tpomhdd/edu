import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mybookly/core/utils/man_widget/myloading.dart';
import 'package:mybookly/feature/data/material/material_cubit.dart';

import 'package:mybookly/views/Widgets/CustomError.dart';
import 'package:mybookly/views/Widgets/HomeScreenbody/CustomListviewItem.dart';

import '../HomeScreenbody.dart';

class FeaturedBooksListView extends StatefulWidget {
  final double height_list;
final int wdith;
  const FeaturedBooksListView({Key? key, required this.height_list, required this.wdith})
      : super(key: key);

  @override
  State<FeaturedBooksListView> createState() => _FeaturedBooksListViewState();
}

class _FeaturedBooksListViewState extends State<FeaturedBooksListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MaterialCubit,MaterialStatee>(
      builder: (context, state) {
   if(state is Materialtrue) {
          return SizedBox(
            height: widget.height_list,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: state.myMaterial.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomListviewItem(mymateriail: state.myMaterial[index],width: widget.wdith,),
                  );
                }),
          );
        }
   else   if(state is MaterialError) {
     return CustomError(errText: state.errMessage);
   }else
     {return myloading();}
   },
    );
  }
}
