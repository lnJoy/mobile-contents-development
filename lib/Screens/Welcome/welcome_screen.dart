import "package:flutter/material.dart";
import 'package:verysad/components/body.dart';

class WelcomeScreen extends StatelessWidget {
  TextStyle titleTxtStyle = TextStyle(
    fontFamily: 'NotoSansCJKKR',
    color: Color(0xfff8f8fa),
    fontSize: 38,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    letterSpacing: -0.95,
  );

  TextStyle subTitleTxtStyle = TextStyle(
    fontFamily: 'NotoSansCJKKR',
    color: Color(0xfff8f8fa),
    fontSize: 15,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    letterSpacing: -0.375,
  );

  TextStyle btnTxtStyle = TextStyle(
    fontFamily: 'NotoSansCJKkr',
    color: Color(0xff565656),
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    letterSpacing: -0.5,
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/body/background.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.13,
                left: size.width * 0.09,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Online GC",
                        style: titleTxtStyle,
                      ),
                    ),
                    Text(
                      "온라인 알리미",
                      style: subTitleTxtStyle,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 20,
                left: 20,
                width: size.width,
                height: size.height,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/school/school.png",
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: size.height * 0.11,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    '등교하기',
                    style: btnTxtStyle,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xfff8f8fa),
                    padding: EdgeInsets.symmetric(vertical: 17, horizontal: 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), // <-- Radius
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
