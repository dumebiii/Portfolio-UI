import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff87CEEB),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Divider(
                      indent: 10,
                      endIndent: 15,
                      thickness: 4, // thickness of the line

                      color: Color(0xff01e283d),
                      // The color to use when painting the line.
                      height: 5,
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Divider(
                      indent: 5,
                      endIndent: 10,
                      thickness: 4, // thickness of the line

                      color: Color(
                          0xff01e283d), // The color to use when painting the line.
                      height: 5,
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Divider(
                      indent: 10,
                      endIndent: 15,
                      thickness: 4, // thickness of the line

                      color: Color(
                          0xff01e283d), // The color to use when painting the line.
                      height: 5,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Hey👋, there!',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "I' m   D u m e b i ",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'a',
                    style: TextStyle(fontSize: 32.0),
                  ),
                  SizedBox(
                    width: 9,
                  ),
                  Container(
                    height: 40,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'Horizon',
                          fontWeight: FontWeight.w400),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          RotateAnimatedText('mobile dev'),
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
                height: 15,
              ),
              Text(
                'Lagos, Nigeria .',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
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
    );
  }
}
