import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mybookly/core/utils/man_widget/myloading.dart';
import 'package:mybookly/views/Widgets/HomeScreenbody/Item.dart';

import '../../../feature/data/material/material_cubit.dart';
import '../CustomError.dart';
class FeaturedItemListView extends StatefulWidget {
  const FeaturedItemListView({Key? key}) : super(key: key);

  @override
  State<FeaturedItemListView> createState() => _FeaturedItemListViewState();
}

class _FeaturedItemListViewState extends State<FeaturedItemListView> {
  @override
  Widget build(BuildContext context) {
    return
      BlocBuilder<MaterialCubit,MaterialStatee>(
        builder: (context, state) {
          if(state is Materialtrue) {

            return

              ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics:NeverScrollableScrollPhysics(),

                  itemCount: state.myMaterial.length,
                  itemBuilder: (context, index) {
                    return  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: item_material(myMaterial: state.myMaterial[index],),
                    );
                  });

          }
          else   if(state is MaterialError) {
            return CustomError(errText: state.errMessage);
          }else
          {return myloading();}
        },
      );  }
}
