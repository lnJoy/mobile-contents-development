import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:verysad/components/background.dart';

class Body extends StatefulWidget {
  _Body createState() => _Body();
}

class _Body extends State<Body> {
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

  // static const MethodChannel _channel = const MethodChannel('com.sad.verysad');

  // String _platformVersion = 'Unknown';

  // Future<String> getPlatformVersion() async {
  //   final String version = await _channel.invokeMethod('getPlatformVersion');
  //   return version;
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
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
              // async {
              //   String result = await getPlatformVersion();
              //   setState(
              //     () {
              //       _platformVersion = result;
              //     },

              child: Text(
                '등교하기',
                // _platformVersion,
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
    );
  }
}
