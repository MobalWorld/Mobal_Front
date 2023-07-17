import 'package:flutter/material.dart';
import 'package:flutter_application_3/second.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'UI/storagebox_btn.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
<<<<<<< HEAD
      designSize: Size(360, 690),

      builder: (content, child) => GetMaterialApp(
=======
      designSize: Size(360, 690), //핸드폰 디폴트 사이즈 지정
      builder: (content, child) => GetMaterialApp( //get방식의 상태 변화를 주고싶을때 사용
>>>>>>> 432bf659cf2227209dae03ba27fe57bcc77a7f93
        debugShowCheckedModeBanner: false,
        home: OrientationBuilder( //회전가능하게 하는 기능
          builder: (context, orientation) {
            return storagebox();
          },
        ),
      ),
    );
  }
}
