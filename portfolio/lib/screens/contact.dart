import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff01e283d),
        body: SafeArea(
            child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 60.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () => Navigator.pushNamed(context, '/home'),
                  icon: const Icon(Icons.clear),
                  iconSize: 70.r,
                  color: Color(0xffE9E5F0),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Let's Chat",
                  style: TextStyle(
                      fontSize: 70.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 25.h,
                ),
                GestureDetector(
                  child: Container(
                    height: 90.h,
                    width: double.infinity,
                    child: Center(
                        child: Text(
                      'ezeukwucd13@gmail.com',
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
                    decoration: BoxDecoration(
                        color: Color(0xff01e283d),
                        border: Border.all(
                          width: 12,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(25)),
                  ),
                )
              ],
            ),
          ),
        )));
  }
}
