import 'dart:js_util';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:plhrovw/header.dart';
import 'package:plhrovw/loop_page.dart';
import 'package:plhrovw/line.dart';

class Shoppig_page extends StatelessWidget{
  List<String> food_brand=["윤스피시","원조과일상회","대우양복점","범어상회","천운불교","링투"];
  List<String> food_hashtag = ["컴퓨터,#부품","사과,#바나나,#과일","남성정장","방앗간","불교,#목탁","여성정장"];
  List<String> food_url = ["assets/images/shopping0.jpg","assets/images/shopping1.jpg","assets/images/shopping2.jpg","assets/images/shopping3.jpg",
    "assets/images/shopping4.jpg","assets/images/shopping5.jpg"];
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
                              "옷",
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
                              "상회",
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
                              "종교",
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
                              "전자",
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
