import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:verysad/Screens/Welcome/welcome_screen.dart';

class EBSLoginScreen extends StatefulWidget {
  @override
  _EBSLoginScreenState createState() => _EBSLoginScreenState();
}

class _EBSLoginScreenState extends State<EBSLoginScreen> {

  final _idTextEditController = TextEditingController();
  final _pwTextEditController = TextEditingController();

  @override
  void dispose() {
    _idTextEditController.dispose();
    _pwTextEditController.dispose();
    super.dispose();
  }

  static const platform = const MethodChannel('mobile.contest.develoment/ebslogin');

  String _loginResult = "no";

  Future<void> _login(String id, String pw) async {
    String loginResult;
    try {
      final String result = await platform.invokeMethod("getClassSubjects", <String, dynamic> {
        "id": id,
        "pw": pw,
      });
      loginResult = "$result";
    } on PlatformException catch (e) {
      loginResult = "${e.message}";
    }

    setState(() {
      _loginResult = loginResult;
      print(_loginResult);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFE9E9E9),
      body: Container(
        child: Stack(alignment: Alignment.center, children: <Widget>[
          Positioned(
            bottom: -35,
            child: Image.asset(
              "assets/images/wave/wave.png",
              height: size.height * 0.26,
            ),
          ),
          Positioned(
            top: size.height * 0.042,
            left: size.width * 0.067,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                    icon: Icon(
                      Icons.navigate_before,
                      size: 35,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return WelcomeScreen();
                          },
                        ),
                      );
                    }),
                SizedBox(
                  width: size.width * 0.05,
                ),
                Container(
                  child: Text("온라인 클래스 로그인 하기",
                      style: TextStyle(
                        fontFamily: 'NotoSansCJKKR',
                        color: Color(0xff191919),
                        fontSize: 20.5,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        letterSpacing: -0.5125,
                      )),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: size.height * 0.56,
            child: Image.asset(
              "assets/images/mini_school/mini_school.png",
              width: size.width * 0.8,
            ),
          ),
          Positioned(
              bottom: size.height * 0.29,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFieldContainer(
                    child: TextField(
                      controller: _idTextEditController,
                      decoration: InputDecoration(
                          hintText: "아이디",
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            fontFamily: 'NotoSansCJKKR',
                            color: Color(0xff9C9C9D),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            letterSpacing: -0.4,
                          )),
                    ),
                  ),
                  TextFieldContainer(
                    child: TextField(
                      obscureText: true,
                      controller: _pwTextEditController,
                      decoration: InputDecoration(
                          hintText: "비밀번호",
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            fontFamily: 'NotoSansCJKKR',
                            color: Color(0xff9C9C9D),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            letterSpacing: -0.4,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.027,
                  ),
                  Container(
                    width: size.width * 0.85,
                    height: size.height * 0.06,
                    child: ElevatedButton(
                      onPressed: () => _login(_idTextEditController.text, _pwTextEditController.text),
                      child: Text("계정 연동",
                          style: TextStyle(
                            fontFamily: 'NotoSansCJKKR',
                            color: Color(0xfff8f8fa),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            letterSpacing: -0.4,
                          )),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff2580eb),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(29), // <-- Radius
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ]),
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;

  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.85,
      height: size.height * 0.06,
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color(0xFFF8F8FA),
        borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}

