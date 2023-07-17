import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/UI/master_key.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class toungpage extends StatefulWidget {
  const toungpage({super.key});

  @override
  State<toungpage> createState() => _toungpageState();
}

class _toungpageState extends State<toungpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("고 민 써 줘.. 힝~",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.w900,
              ),
              ),
            ],
        ),
        MasterKey(margin: 0),
      ],
    ),
    );
  }
}
