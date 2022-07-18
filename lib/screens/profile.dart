import 'package:flutter/material.dart';
import 'package:get_fuel_app/constants/app_constants.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              color: const Color.fromARGB(255, 208, 14, 1),
              child: BezierSection(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: const EdgeInsets.only(
                    top: 30.0, bottom: 10.0, left: 30.0, right: 30.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20.0,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 150,
                          margin: const EdgeInsets.only(top: 75.0),
                          width: screenWidth,
                          decoration: const BoxDecoration(
                            gradient: linearGradient_3,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Color.fromARGB(66, 0, 0, 0),
                                blurRadius: 10,
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Column(
                            children: const [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 75.0,
                                foregroundColor: Colors.white,
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/user.jpg"),
                                  radius: 68.0,
                                ),
                              ),
                              SizedBox(height: 15.0),
                              Text(
                                "Leslie Alexander",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 3),
                              Text(
                                "07/17/2022",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 25.0, horizontal: 20.0),
                      width: screenWidth,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Color.fromARGB(66, 0, 0, 0),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(14)),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "ABC - 2105",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "AN002345TN02",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "2018 Registered",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Container(
                                height: 50,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(14)),
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/car.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 25.0, horizontal: 20.0),
                      width: screenWidth,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(14)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Color.fromARGB(66, 0, 0, 0),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(14)),
                        ),
                        child: Column(
                          children: const [
                            Text(
                              "User Details",
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                              ),
                            ),
                            SizedBox(height: 20),
                            UserDetails(
                              text: "NIC Number",
                              value: "989589652V",
                            ),
                            SizedBox(height: 10),
                            UserDetails(
                              text: "Birth Date",
                              value: "05/12/1998",
                            ),
                            SizedBox(height: 10),
                            UserDetails(
                              text: "Address",
                              value: "85 Green Rd. Colombo",
                            ),
                            SizedBox(height: 10),
                            UserDetails(
                              text: "Email",
                              value: "testuser@mail.com",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserDetails extends StatelessWidget {
  const UserDetails({Key? key, required this.text, required this.value})
      : super(key: key);

  final String text;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: const TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 61, 61, 61)),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                value,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 61, 61, 61)),
              ),
            ],
          ),
        ),
      ],
    );
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
                  start: Offset(0, screenHeight),
                  top: Offset(screenWidth * 0.095, screenHeight * 0.8),
                  end: Offset(screenWidth * 0.5, screenHeight * 0.65),
                ),
                BezierCurveSection(
                  start: Offset(screenWidth * 0.7, screenHeight * 0.65),
                  top: Offset(screenWidth * 0.95, screenHeight * 0.5),
                  end: Offset(screenWidth, screenHeight * 0.4),
                ),
              ],
            ),
            child: Container(
              height: screenHeight,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
