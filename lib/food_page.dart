import 'dart:js_util';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plhrovw/header.dart';
import 'package:plhrovw/loop_page.dart';
import 'package:plhrovw/line.dart';

class Food_page extends StatelessWidget{
  List<String> food_brand=["태평양 분식","부산갈매기족발","봉석이토스트","부부수산","이지단팥빵","양주튀김"];
  List<String> food_hashtag = ["칼국수","족발","공방","생선회","베이커리","분식"];
  List<String> food_url = ["assets/images/food_0.jpg","assets/images/food_1.jpg","assets/images/food_2.jpg","assets/images/food_3.jpg",
    "assets/images/food_4.jpg","assets/images/food_5.jpg"];
  @override
  Widget build(BuildContext context){

    return ScreenUtilInit(
        builder: (context, child) => Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                header(context),
                Container(
                  width: 1.0.sw,
                  child: Row(
                    children: [
                      InkWell(
                          borderRadius: BorderRadius.circular(30),
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Food_page()
                            //     )
                            // );
                            print("식사 터치");
                          },
                          child: Container(
                            width: 0.2.sw,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: const Color(0xFFFEDCD3),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: const Text(
                              "분식",
                              style: TextStyle(color: Colors.black,fontSize: 20),
                            ),
                          )
                      ),
                      SizedBox(width: MediaQuery.of(context).size.height *0.02),
                      InkWell(
                          borderRadius: BorderRadius.circular(30),
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Food_page()
                            //     )
                            // );
                            print("식사 터치");
                          },
                          child: Container(
                            width: 0.2.sw,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: const Color(0xFFFEDCD3),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: const Text(
                              "찜,찌개",
                              style: TextStyle(color: Colors.black,fontSize: 20),
                            ),
                          )
                      ),
                      SizedBox(width: MediaQuery.of(context).size.height *0.02),
                      InkWell(
                          borderRadius: BorderRadius.circular(30),
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Food_page()
                            //     )
                            // );
                            print("식사 터치");
                          },
                          child: Container(
                            width: 0.2.sw,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: const Color(0xFFFEDCD3),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: const Text(
                              "카페",
                              style: TextStyle(color: Colors.black,fontSize: 20),
                            ),
                          )
                      ),
                      SizedBox(width: MediaQuery.of(context).size.height *0.02),
                      InkWell(
                          borderRadius: BorderRadius.circular(30),
                          onTap: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => Food_page()
                            //     )
                            // );
                            print("식사 터치");
                          },
                          child: Container(
                            width: 0.2.sw,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: const Color(0xFFFEDCD3),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: const Text(
                              "노점",
                              style: TextStyle(color: Colors.black,fontSize: 20),
                            ),
                          )
                      ),
                    ],
                  ),
                ),
                CustomPaint(
                  size: Size(MediaQuery.of(context).size.width,MediaQuery.of(context).size.height*0.02), // 전체 화면 크기에 맞추기
                  painter: LongLinePainter(),
                ),
                loop(context, food_brand[0], food_hashtag[0], food_url[0]),
                CustomPaint(
                  size: Size(MediaQuery.of(context).size.width,MediaQuery.of(context).size.height*0.02), // 전체 화면 크기에 맞추기
                  painter: LongLinePainter(),
                ),
                loop(context, food_brand[1], food_hashtag[1], food_url[1]),
                CustomPaint(
                  size: Size(MediaQuery.of(context).size.width,MediaQuery.of(context).size.height*0.02), // 전체 화면 크기에 맞추기
                  painter: LongLinePainter(),
                ),
                loop(context, food_brand[2], food_hashtag[2], food_url[2]),
                CustomPaint(
                  size: Size(MediaQuery.of(context).size.width,MediaQuery.of(context).size.height*0.02), // 전체 화면 크기에 맞추기
                  painter: LongLinePainter(),
                ),
                loop(context, food_brand[3], food_hashtag[3], food_url[3]),
                CustomPaint(
                  size: Size(MediaQuery.of(context).size.width,MediaQuery.of(context).size.height*0.02), // 전체 화면 크기에 맞추기
                  painter: LongLinePainter(),
                ),
                loop(context, food_brand[4], food_hashtag[4], food_url[4]),
                CustomPaint(
                  size: Size(MediaQuery.of(context).size.width,MediaQuery.of(context).size.height*0.02), // 전체 화면 크기에 맞추기
                  painter: LongLinePainter(),
                ),
                loop(context, food_brand[5], food_hashtag[5], food_url[5]),
              ],
          ),
          ),
        )
    );
  }
}
