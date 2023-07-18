import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GroupMain extends StatefulWidget {
  const GroupMain({Key? key}) : super(key: key);

  @override
  State<GroupMain> createState() => _GroupMainState();
}

final List<String> name = <String>['이름 1', '이름 2', '이름 3'];
final List<String> title = <String>['제목 1', '제목 2', '제목 3'];
final List<String> content = <String>['내용 1', '내용 2', '내용 3'];
final List<String> date = <String>['날짜 1', '날짜 2', '날짜 3'];
final List<String> image = <String> ['assets/walrus.png','assets/peng1.jpg','assets/peng2.jpg'];

class _GroupMainState extends State<GroupMain> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.white,
      toolbarHeight: 80,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,)
        ,
        onPressed
            :
            () {},
      ),
      title: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage('assets/walrus.png'),
            radius: 30, //프로필 사진 원 사이즈 -> 30으로 고정
          ),
          SizedBox(width: 5),
          Text('23-1 한동 위로팀',style: TextStyle(color: Colors.black),),
        ],
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.mail_outline,color: Colors.black,)),
        IconButton(onPressed: () {}, icon: Icon(Icons.notifications,color: Colors.black,)),
      ],
      centerTitle: true,
    ),
    body: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    SizedBox(height: 10,),
    Padding(
    padding: EdgeInsets.symmetric(
    horizontal: 0.01.sh,
    vertical: 0.01.sh),
    child: Container(
    height: 0.15.sh,
    decoration: BoxDecoration(
    color: Colors.grey[100],
    borderRadius: BorderRadius.circular(20),
    boxShadow: [
    BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 2,
    blurRadius: 2,
    offset: Offset(0, 3), // changes position of shadow
    ),
    ],
    ),
    child: Padding(
    padding: EdgeInsets.all(20),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    RichText(
    text: TextSpan(
    text: '우리 팀의 이번주 위로왕 ',
    style: TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: Colors.black),
    children: [
    TextSpan(
    text: '바다 표범',
    style: TextStyle(fontSize: 15, color: Color(0xFFF69B94),fontWeight: FontWeight.w600),
    ),
    TextSpan(
    text: '님의 한마디!',
    style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w800),
    ),
    ])),
    SizedBox(height: 11),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    CircleAvatar(
    backgroundColor: Colors.white,
    backgroundImage: AssetImage('assets/walrus.png'),
    radius: 20, //프로필 사진 원 사이즈 -> 30으로 고정
    ),
    Text('모발모발 한동 위로팀! 다들 화이팅하자!!!',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 17.5,color: Colors.indigoAccent),),
    ],
    ),
    ],
    ),
    ),
    ),
    ),

      Expanded(child: Container(
        child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 0.01.sh, vertical: 40),
            itemCount: name.length,
            itemBuilder: (BuildContext context, int index) {
              return Transform.translate(
                offset: Offset(0,5),
                child: Column(
                  children: [
                    Container(
                      clipBehavior: Clip.none,
                      height: 0.23.sh,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //이름과 날짜
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
                                          child: Text(name[index],style: TextStyle(fontSize: 14),),
                                        ),
                                        SizedBox(width: 10),

                                          Text(date[index],style: TextStyle(fontSize: 14),),

                                      ],
                                    ),
                                //제목
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                      child: Text(title[index],style: TextStyle(fontSize: 14),),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                //내용
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                      child: Text(content[index],style: TextStyle(fontSize: 14),),
                                    ),
                                  ],
                                ),



                                    Transform.scale(
                                      scale: 1,
                                      child: Transform.translate(offset: Offset(0,-150),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          backgroundImage: AssetImage(image[index]),
                                          radius: 25, //프로필 사진 원 사이즈 -> 30으로 고정
                                        ),),
                                    ),


                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                    )
                  ],
                ),
              );
            })
      ))
],
    ),

    ),);
  }
}
