import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff87CEEB),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: IconButton(
                    onPressed: () => Navigator.pushNamed(context, '/home'),
                    icon: const Icon(Icons.clear),
                    iconSize: 70.r,
                    color: Color(0xffE9E5F0),
                  ),
                ),
                Center(
                  child: Image.asset(
                    'assets/images/dum.png',
                    height: 400,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Me',
                  style: TextStyle(
                      fontSize: 40.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  """I am Ezeukwu Chukwudumebi, a junior mobile developer, graphic designer and student based in Lagos, Nigeria. I am passionate about politics, sci-fi movies and reading motivating books""",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Mobile Developer',
                  style: TextStyle(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),

                Text(
                  """I am a junior mobile developer passionate about Mobile Programming with 1-year plus experience in mobile development (Flutter). """,
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w300),
                ),

                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Graphic Designer ',
                  style: TextStyle(
                      fontSize: 40.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10.h,
                ),

                Text(
                  """Since I was kid , I have always been passionate about designs, ever since I have worked in developing my design skills. Creativity and creative thinking are the components that help me successfully complete design projects. """,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),

                SizedBox(
                  height: 15.h,
                ),

                // Image.asset(
                //   'assets/images/dum.png',
                //   height: 500,
                //   width: 400,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
