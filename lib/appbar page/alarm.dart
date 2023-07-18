import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class alarmpage extends StatefulWidget {
  const alarmpage({super.key});

  @override
  State<alarmpage> createState() => _alarmpageState();
}

class _alarmpageState extends State<alarmpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:
      PreferredSize( //appbar 높이 조절
        preferredSize: Size.fromHeight( 75.0, ),

        child: AppBar(
          toolbarHeight: 75,
          backgroundColor: Colors.white,

          //뒤로가기 버튼
          leading: IconButton(
            color: Colors.black,
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () {},
          ),
          centerTitle: true,
          title: Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //나중에 회원 이름 data 넣기
              Text("알림",
                style:TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 24,
                  color: Colors.black, ),
              ),],
          ),

          // 우측 아이콘 - 알림 기능
           ),),
    );
  }
}
