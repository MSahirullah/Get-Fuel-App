import 'package:flutter/material.dart';
import 'package:get_fuel_app/screens/navbar.dart';
import 'package:get_fuel_app/widget/custom_password_input.dart';
import 'package:get_fuel_app/widget/custom_text_button.dart';
import 'package:get_fuel_app/widget/cutom_text_field.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SizedBox(
      height: screenHeight,
      width: screenWidth,
      child: SingleChildScrollView(
        child: Column(
          children: [
            BezierSection(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    CustomTextField(
                      inputLength: 12,
                      inputType: 'nic',
                      labelText: 'NIC Number',
                      valueKey: 'NIC',
                      validator: (String? fieldContent) {
                        if (fieldContent!.isNotEmpty &&
                            fieldContent.length < 13) {
                          return 'Please enter a valid NIC number';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const CustomPasswordInputField(),
                    const SizedBox(
                      height: 30,
                    ),
                    const CustomTextButton(
                        widget: NavBar(), label: "Login", valueKey: "login"),
                  ],
                )),
          ],
        ),
      ),
    ));
  }
}

class BezierSection extends StatelessWidget {
  const BezierSection(
      {Key? key, required this.screenWidth, required this.screenHeight})
      : super(key: key);

  final double screenWidth;
  final double screenHeight;

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
                  start: Offset(0, screenHeight / 2),
                  top: Offset(screenWidth / 2, screenHeight / 1.75),
                  end: Offset(screenWidth, screenHeight / 2),
                ),
              ],
            ),
            child: Container(
              height: screenHeight / 1.75,
              // color: Colors.red,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bg.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
