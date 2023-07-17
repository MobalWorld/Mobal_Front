// import 'dart:ui';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// final beige = Color(0xffFFF8E8);
// final darkTextColor = Color(0xff1F1A3D);


// //보관함 버튼
// Widget getButton({required String hint}) {
//     return Container(
//       width: double.infinity,
//       height: Getheight(0.2.sh),
//       child: ElevatedButton(
//         onPressed: () {},
//         style: ButtonStyle(
//           backgroundColor: MaterialStateProperty.all(beige),
//           foregroundColor: MaterialStateProperty.all(Colors.black),
//           padding:
//               MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 14.h)),
//           textStyle: MaterialStateProperty.all(TextStyle(
//             fontSize: FontSize(14.sp),
//             fontWeight: FontWeight.w700,
//           )),
//           side: MaterialStateProperty.all(BorderSide(
//             width: 1.0, // 테두리의 두께를 조정하세요
//             color: beige, // 테두리의 색상을 원하는 색상으로 변경하세요
//           )),
//           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//             RoundedRectangleBorder(
//               borderRadius:
//                   BorderRadius.circular(20.0), // 원하는 모서리의 둥근 정도를 조정하세요
//             ),
//           ),
//         ),
//         child: Text(hint),
//       ),
//     );
//   }

//   //버튼의 임계값(보관함)
//   double Getheight(double size) {
//     if (size < 100) {
//       size = 130;
//     }
//     return size;
//   }
//   //fontsize의 임계값(보관함)
//   double FontSize(double size) {
//     if (size > 20) size = 20;
//     return 20;
//   }