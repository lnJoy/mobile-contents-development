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
                top: 102.0,
                left: 32.0,
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
                bottom: 86,
                child: Container(
                  width: size.width * 0.45,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: FlatButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      color: Color(0xfff8f8fa),
                      onPressed: () {},
                      child: Text("등교하기", style: btnTxtStyle),
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
