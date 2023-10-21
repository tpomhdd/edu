import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:mybookly/feature/data/models/Comments.dart';


import '../models/mydata.dart';

part 'comment_state.dart';

class CommentCubit extends Cubit<CommentState> {
  CommentCubit(this._mydata) : super(CommentInitial());
  final  mydata _mydata;
  Future<void> mydatafetch(String id) async {
    emit(CommentLoading());
    var result = await _mydata.getComments(id);
    List<Comments> MyComment;
    result.fold((error){
      emit(CommentFaillure(error.errMessage));
    }, (myComment) {
      emit(CommentSuccess(myComment));
    });
  }}
