import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio/screens/menu.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
        drawer: const Menu(),
        backdropColor: Color(0xffE9E5F0),
        controller: _advancedDrawerController,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        animateChildDecoration: true,
        rtlOpening: false,
        // openScale: 1.0,
        disabledGestures: false,
        childDecoration: BoxDecoration(
          // NOTICE: Uncomment if you want to add shadow behind the page.
          // Keep in mind that it may cause animation jerks.
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black,
              blurRadius: 0.0.r,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(16.r)),
        ),
        child: Scaffold(
          backgroundColor: Color(0xff87CEEB),
          appBar: AppBar(
            elevation: 0.r,
            leadingWidth: 100.w,

            toolbarHeight: 100.0.h, // doubl
            backgroundColor: Color(0xff87CEEB),

            leading: IconButton(
              onPressed: _handleMenuButtonPressed,
              icon: ValueListenableBuilder<AdvancedDrawerValue>(
                valueListenable: _advancedDrawerController,
                builder: (_, value, __) {
                  return AnimatedSwitcher(
                    duration: Duration(milliseconds: 250),
                    child: value.visible
                        ? Icon(
                            Icons.clear,
                            size: 50.r,
                            color: Color(0xffE9E5F0),
                          )
                        : CircleAvatar(
                            backgroundColor: Color(0xffE9E5F0),
                            radius: 25.r,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Divider(
                                  indent: 10.r,
                                  endIndent: 15.r,
                                  thickness: 4.r, // thickness of the line

                                  color: Color(0xff01e283d),
                                  // The color to use when painting the line.
                                  height: 5,
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Divider(
                                  indent: 5.r,
                                  endIndent: 10.r,
                                  thickness: 4.r, // thickness of the line

                                  color: Color(
                                      0xff01e283d), // The color to use when painting the line.
                                  height: 5.h,
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Divider(
                                  indent: 10.r,
                                  endIndent: 15.r,
                                  thickness: 4.r, // thickness of the line

                                  color: Color(
                                      0xff01e283d), // The color to use when painting the line.
                                  height: 5.h,
                                ),
                              ],
                            ),
                          ),
                    key: ValueKey<bool>(value.visible),
                  );
                },
              ),
            ),
          ),
          body: SafeArea(
              child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hey👋, there!',
                    style:
                        TextStyle(fontSize: 40.sp, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    "I' m   D u m e b i ",
                    style:
                        TextStyle(fontSize: 40.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'a',
                        style: TextStyle(fontSize: 32.0.sp),
                      ),
                      SizedBox(
                        width: 9.w,
                      ),
                      Container(
                        height: 40.h,
                        child: DefaultTextStyle(
                          style: TextStyle(
                              fontSize: 30.sp,
                              fontFamily: 'Horizon',
                              fontWeight: FontWeight.w400),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              RotateAnimatedText('mobile developer'),
                              RotateAnimatedText('graphic Designer'),
                            ],
                            onTap: () {
                              print("Tap Event");
                            },
                            pause: Duration(milliseconds: 500),
                            repeatForever: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'Lagos, Nigeria.',
                    style:
                        TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w300),
                  ),
                  // Image.asset(
                  //   'assets/images/dum.png',
                  //   height: 500,
                  //   width: 400,
                  // ),
                ],
              ),
            ),
          )),
        ));
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}
