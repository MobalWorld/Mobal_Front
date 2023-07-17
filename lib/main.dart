import 'package:flutter/material.dart';
import 'package:flutter_application_3/second.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),

      builder: (content, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: OrientationBuilder(
          builder: (context, orientation) {
            return ChangeColor();
          },
        ),
      ),
    );
  }
}

class ChangeColor extends StatefulWidget {
  const ChangeColor({Key? key}) : super(key: key);

  @override
  State<ChangeColor> createState() => _ChangeColorState();
}

class _ChangeColorState extends State<ChangeColor> {
  final beige = Color(0xffFFF8E8);
  final darkTextColor = Color(0xff1F1A3D);

  //button을 위젯화 - 만듦
  Widget getButton({
    required String hint,
  }) {
    return Container(
      width: double.infinity,
      height: Getheight(0.15.sh),
      child: ElevatedButton(
        onPressed: () {
          Get.to(Second());
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(beige),
          foregroundColor: MaterialStateProperty.all(Colors.black),
          padding:
              MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 14.h)),
          textStyle: MaterialStateProperty.all(TextStyle(
            fontSize: FontSize(14.sp),
            fontWeight: FontWeight.w700,
          )),
          side: MaterialStateProperty.all(BorderSide(
            width: 1.0, // 테두리의 두께를 조정하세요
            color: beige, // 테두리의 색상을 원하는 색상으로 변경하세요
          )),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(20.0), // 원하는 모서리의 둥근 정도를 조정하세요
            ),
          ),
        ),
        child: Text(hint),
      ),
    );
  }

  //버튼의 임계값
  double Getheight(double size) {
    if (size < 150) {
      size = 150;
    }
    return size;
  }

  //fontsize의 임계값
  double FontSize(double size) {
    if (size > 20) size = 20;
    return 20;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.airline_seat_legroom_normal_sharp,
              size: 30.sp,
            ),
            onPressed: () {},
            color: Colors.black,
          ),
          elevation: 0.0,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding:
                EdgeInsets.symmetric(horizontal: 0.03.sh, vertical: 0.02.sh),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/walrus.png'),
                  radius: 40,
                ),
                SizedBox(
                  height: 0.015.sh,
                ),
                Text(
                  '바다 코끼리',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(
                  height: 0.03.sh,
                ),
                SizedBox(
                  height: 0.03.sh,
                ),
                getButton(hint: "위로 보관함"),
                SizedBox(
                  height: 0.03.sh,
                ),
                getButton(hint: "나의 고민 보관함"),
                SizedBox(
                  height: 0.03.sh,
                ),
                getButton(hint: "임시 보관함"),
              ],
            ),
          ),
        ));
  }
}
