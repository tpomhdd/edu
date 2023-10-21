part of 'comment_cubit.dart';

@immutable
abstract class CommentState {}

class CommentInitial extends CommentState {}


class CommentLoading extends CommentState {}
class CommentFaillure extends CommentState {
  final String reeMessage;

  CommentFaillure(this.reeMessage);
}
class CommentSuccess extends CommentState {

final  List <Comments> comment;


  CommentSuccess(this.comment);
}
