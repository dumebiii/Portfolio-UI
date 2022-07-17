import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffE9E5F0),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 100.h, horizontal: 40.w),
          child: Center(
            child: (Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(milliseconds: 3500),
                  childAnimationBuilder: (widget) => SlideAnimation(
                    verticalOffset: 500.0.h,
                    child: FadeInAnimation(
                      child: widget,
                    ),
                  ),
                  children: [
                    TextButton(
                        onPressed: () => Navigator.pushNamed(context, '/about'),
                        child: Text(
                          'About',
                          style: TextStyle(
                            fontSize: 35.sp,
                            color: Color(0xff87CEEB),
                          ),
                        )),
                    SizedBox(
                      height: 50.h,
                    ),
                    TextButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, '/project'),
                        child: Text(
                          'Project',
                          style: TextStyle(
                            fontSize: 35.sp,
                            color: Color(0xff01e283d),
                          ),
                        )),
                    SizedBox(
                      height: 50.h,
                    ),
                    TextButton(
                      onPressed: (() =>
                          Navigator.pushNamed(context, '/contact')),
                      child: Text(
                        'Contact',
                        style: TextStyle(
                          fontSize: 35.sp,
                          color: Color(0xff87CEEB),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                  ],
                ))),
          ),
        ));
  }
}
