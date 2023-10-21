import 'package:dartz/dartz.dart';
import 'package:http/http.dart'as http;
import 'package:mybookly/feature/data/models/Comments.dart';

import 'dart:convert';


import '../../../core/errors/failures.dart';

import 'material.dart';

class mydata {
  Future <Either<Failure, List<MyMaterial>>> getmaterial() async {
    Uri uri = Uri.parse("https://edu.tpowep.com/Material_json");

    http.Response response = await http.get(uri);
    String jsonsDataString = response.body.toString();
    List <MyMaterial> mylist = [];
    var _data = jsonDecode(jsonsDataString);
    print(_data.toString());
    for (var mydata in _data) {
      mylist.add(MyMaterial.fromJson(mydata));
    }

      return right(mylist);

  }

  Future <Either<Failure, List<Comments>>> getComments(String id) async {
    Uri uri = Uri.parse("https://tpowep.com/edu/apicomment.php?id=${id}");

    http.Response response = await http.get(uri);
    String jsonsDataString = response.body.toString();
    List <Comments> mylist = [];
    var _data = jsonDecode(jsonsDataString);
    print(_data.toString());
    for (var mydata in _data) {
      mylist.add(Comments.fromJson(mydata));

    }

    return right(mylist);

  }

  static Future AddComment
      (String id,String txt) async {
    // SharedPreferences preferences=await SharedPreferences.getInstance();
    // String username=  preferences.getString('user').toString();
    // // print(sharedPreferences.get(sharedname));

    var data = {
      "idsong": id,
      "txt":txt,

      "user":'username'
    };
    Uri url =Uri.parse( "https://tpowep.com/edu/addcomment.php");
    var reesponse = await http.post(url, body: data);
    var responsebody = jsonDecode(reesponse.body);




  }

}