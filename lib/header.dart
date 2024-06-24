import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget header(BuildContext context){
  return ScreenUtilInit(
    builder: (context, child)=> Column(
      children: [
        Container(
          width: 1.0.sw,
          height: 200,
          color: const Color(0xFFB22B15),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height *0.07),
              GestureDetector(
                onTap: (){
                  print("터치");
                },
                child: Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width *0.05,
                  ),
                  child: const Text(
                    "남부시장",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height *0.01),
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none
                    ),
                    hintText: '가계 검색'
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Row(
            children: [
              GestureDetector(
                onTap: (){
                  print("터치");
                },
                child:  const Text(
                  "시장 정보",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.height *0.02),
              GestureDetector(
                onTap: (){
                  print("터치");
                },
                child:  const Text(
                  "자주 방문",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.height *0.02),
              GestureDetector(
                onTap: (){
                  print("터치");
                },
                child:  const Text(
                  "행사 정보",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.height *0.02),
              GestureDetector(
                onTap: (){
                  print("터치");
                },
                child:  const Text(
                  "장바구니",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}