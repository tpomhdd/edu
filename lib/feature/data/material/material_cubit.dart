import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:mybookly/feature/data/models/mydata.dart';

import '../models/material.dart';


part 'material_state.dart';

class MaterialCubit extends Cubit<MaterialStatee> {
  MaterialCubit(this._mydata) : super(MaterialInitial());


  final  mydata _mydata;
  Future<void> mydatafetch() async {
final String txt;
emit(MaterialLoading());
    var result = await _mydata.getmaterial();
    List<MyMaterial> Mymaterial;
    result.fold((error){
      emit(MaterialError(error.errMessage));
    }, (myMaterial) {
      emit(Materialtrue( myMaterial));
    });
  }
}