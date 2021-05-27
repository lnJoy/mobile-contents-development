import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: constraints.maxHeight,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              right: 0,
              child: Image.asset(
                "assets/images/body/yellow_right.png",
                width: constraints.maxWidth,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "assets/images/body/green_left.png",
                width: constraints.maxWidth,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Image.asset(
                "assets/images/body/blue_bottom.png",
                width: constraints.maxWidth,
              ),
            ),
          ],
        ),
      );
    });
  }
}
