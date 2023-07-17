import 'package:flutter/material.dart';
import 'package:flutter_application_3/UI/Toung.dart';
import 'package:flutter_application_3/UI/storagebox_btn.dart';
import 'package:flutter_application_3/login/login.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../login/add_google_info.dart';
import 'join_make_page.dart';
import 'main_loading.dart';

class MasterKey extends StatelessWidget {
  const MasterKey({Key? key, required this.margin}) : super(key: key);
  final double margin;
  @override
  Widget build(BuildContext context) {
    return
      Container(
        margin: EdgeInsets.fromLTRB(0, margin, 0, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<String>(
              hint: Text('페이지 이동'),
              items: [
                DropdownMenuItem(
                  value: 'login',
                  child: Text('Login'),
                ),
                DropdownMenuItem(
                  value: 'joinmake',
                  child: Text('JoinMake'),
                ),
                DropdownMenuItem(
                  value: 'loading',
                  child: Text(
                    'loading',
                  ),
                ),
                DropdownMenuItem(
                  value: 'info',
                  child: Text(
                    'add_info',
                  ),
                ),
                DropdownMenuItem(
                  value: 'storagebox',
                  child: Text(
                    'storagebox',
                  ),
                ),
                DropdownMenuItem(
                  value: 'toung',
                  child: Text(
                    'Toung',
                  ),
                ),
              ],
              onChanged: (String? value) {
                if (value == 'joinmake') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => JoinMakePage()));
                } else if (value == 'loading') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoadingPage()));
                } else if (value == 'info') {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GoogleAdditionalPage()));
                } else if (value == 'storagebox') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Storagebox()));
                } else if (value == 'login') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                } else if (value == 'toung') {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => toungpage()));
                }
              },
            ),
          ],
        ),
      );

  }
}
