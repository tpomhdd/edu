class MyMaterial {
  int? id;
  String? address;
  String? img;
  String? link;
  //double? rating;
  String? categorie;

  MyMaterial(
      {this.id,
        this.address,
        this.img,
        this.link,
    //    this.rating,
        this.categorie});

  MyMaterial.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    address = json['address'];
    img = json['img'];
    link = json['link'];
  //  rating = json['Rating'];
    categorie = json['categorie'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['address'] = this.address;
    data['img'] = this.img;
    data['link'] = this.link;
 //   data['Rating'] = this.rating;
    data['categorie'] = this.categorie;
    return data;
  }
}