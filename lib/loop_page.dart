import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget loop(BuildContext context, var brand, var hashtag, var url) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * 0.2,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.3,
          height: MediaQuery.of(context).size.height * 0.5, // 원하는 크기로 설정
          child: Image.asset(
            url,
            fit: BoxFit.contain, // 이미지를 컨테이너 내부에 맞춤
            alignment: Alignment.topCenter, // 이미지가 상단에 정렬되도록 설정
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width*0.01), // 이미지와 텍스트 사이에 간격 추가
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // Column의 mainAxisAlignment를 start로 변경
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                brand,
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Text(
                "#" + hashtag,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
