import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plhrovw/loop_page.dart';
class Data{
  List<String> food_brand=["태평양 분식","부산갈매기족발","봉석이토스트","부부수산","이지단팥빵","삼천포앞바다2호점"];
  List<String> food_hashtag = ["칼국수","족발","공방","생선회","베이커리","한식"];
  List<String> food_url = ["https://buly.kr/EI1ipxH"];
  void food(BuildContext context){
    for(int i=0;i<food_url.length;i++){
      loop(context, food_brand[i], food_hashtag[i], food_url[i]);
    }
  }
}