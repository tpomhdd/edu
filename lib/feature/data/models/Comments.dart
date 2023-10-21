
class Comments {
  String? id;
  String? commentText;
  String? materialId;
  String? user;

  Comments({this.id, this.commentText, this.materialId, this.user});

  Comments.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    commentText = json['comment_text'];
    materialId = json['material_id'];
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['comment_text'] = this.commentText;
    data['material_id'] = this.materialId;
    data['user'] = this.user;
    return data;
  }
}