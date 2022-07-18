import 'package:flutter/material.dart';
import 'package:get_fuel_app/screens/login.dart';
import 'package:get_fuel_app/widget/custom_text_button.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: screenWidth,
              height: 30,
              child: ColoredBox(
                color: Theme.of(context).primaryColor,
              ),
            ),
            BezierSection(screenWidth: screenWidth),
            Image.asset(
              'assets/images/logo.png',
              width: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: screenHeight / 6,
            ),
            SizedBox(
              width: screenWidth / 1.5,
              child: const CustomTextButton(
                  widget: Login(), label: "GO", valueKey: "GO"),
            ),
            SizedBox(
              height: screenHeight / 10,
            ),
          ],
        ),
      ),
    );
  }
}

class BezierSection extends StatelessWidget {
  const BezierSection({Key? key, required this.screenWidth}) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          ClipPath(
            clipper: ProsteBezierCurve(
              position: ClipPosition.bottom,
              list: [
                BezierCurveSection(
                  start: const Offset(0, 110),
                  top: Offset(screenWidth / 4.3, 175),
                  end: Offset(screenWidth / 2.4, 150),
                ),
                BezierCurveSection(
                  start: Offset(screenWidth / 1.96, 250),
                  top: Offset(screenWidth / 1.3, 75),
                  end: Offset(screenWidth, 40),
                ),
              ],
            ),
            child: Container(
              height: 225,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomSelfClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    BezierCurveSection section1 = BezierCurveSection(
      start: const Offset(0, 30),
      top: const Offset(10, 45),
      end: const Offset(0, 60),
    );
    BezierCurveSection section2 = BezierCurveSection(
      start: Offset(size.width, size.height - 90),
      top: Offset(size.width - 10, size.height - 105),
      end: Offset(size.width, size.height - 120),
    );
    BezierCurveDots dot1 = ProsteBezierCurve.calcCurveDots(section1);
    BezierCurveDots dot2 = ProsteBezierCurve.calcCurveDots(section2);

    path.lineTo(0, 0);
    path.lineTo(0, 30);
    path.quadraticBezierTo(dot1.x1, dot1.y1, dot1.x2, dot1.y2);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height - 90);
    path.quadraticBezierTo(dot2.x1, dot2.y1, dot2.x2, dot2.y2);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class CustomSelfClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    BezierCurveSection section1 = BezierCurveSection(
      start: Offset(0, size.height),
      top: Offset(30, size.height - 50),
      end: Offset(80, size.height - 70),
    );
    BezierCurveSection section2 = BezierCurveSection(
      start: Offset(size.width - 100, size.height - 70),
      top: Offset(size.width - 30, size.height - 95),
      end: Offset(size.width, size.height - 160),
    );
    BezierCurveDots dot1 = ProsteBezierCurve.calcCurveDots(section1);
    BezierCurveDots dot2 = ProsteBezierCurve.calcCurveDots(section2);

    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(dot1.x1, dot1.y1, dot1.x2, dot1.y2);
    path.lineTo(size.width - 100, size.height - 70);
    path.quadraticBezierTo(dot2.x1, dot2.y1, dot2.x2, dot2.y2);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
