import 'package:flutter/material.dart';
import 'package:get_fuel_app/constants/app_constants.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';

class FuelDetails extends StatelessWidget {
  const FuelDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            BezierSection(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
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
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      width: screenWidth,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Color.fromARGB(66, 0, 0, 0),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Container(
                        height: 150,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                            image: AssetImage("assets/images/qr-code.png"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      width: screenWidth,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Color.fromARGB(66, 0, 0, 0),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Column(
                          children: [
                            const Text(
                              "Fuel Details",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: const Text(
                                      "Your Fuel Type",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.red),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(20)),
                                          border: Border.all(
                                              width: 1, color: Colors.red),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5.0, horizontal: 15.0),
                                        child: const Text(
                                          "Petrol",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                            color:
                                                Color.fromARGB(255, 208, 14, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12.0),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: const Text(
                                      "Weekly Quota",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.red),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(20)),
                                            border: Border.all(
                                                width: 1, color: Colors.red)),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5.0, horizontal: 15.0),
                                        child: const Text(
                                          "100 L",
                                          style: TextStyle(
                                            color:
                                                Color.fromARGB(255, 208, 14, 1),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            const Divider(),
                            const SizedBox(height: 15),
                            Row(
                              children: const [
                                Text(
                                  "Fuel Price",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Row(
                              children: const [
                                Text(
                                  "Petrol 92",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Row(
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(200),
                                      ),
                                      color: Colors.white,
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                          color: Color.fromARGB(66, 0, 0, 0),
                                          blurRadius: 6,
                                        ),
                                      ],
                                    ),
                                    child: const FuelPrice(
                                      path: 'assets/images/cpt-logo.png',
                                      price: '450 LKR',
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(200),
                                      ),
                                      color: Colors.white,
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                          color: Color.fromARGB(66, 0, 0, 0),
                                          blurRadius: 6,
                                        ),
                                      ],
                                    ),
                                    child: const FuelPrice(
                                      path: 'assets/images/ioc-logo.png',
                                      price: '470 LKR',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: const [
                                Text(
                                  "Petrol 95",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 18),
                            Row(
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(200),
                                      ),
                                      color: Colors.white,
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                          color: Color.fromARGB(66, 0, 0, 0),
                                          blurRadius: 6,
                                        ),
                                      ],
                                    ),
                                    child: const FuelPrice(
                                      path: 'assets/images/cpt-logo.png',
                                      price: '500 LKR',
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(200),
                                      ),
                                      color: Colors.white,
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                          color: Color.fromARGB(66, 0, 0, 0),
                                          blurRadius: 6,
                                        ),
                                      ],
                                    ),
                                    child: const FuelPrice(
                                      path: 'assets/images/ioc-logo.png',
                                      price: '520 LKR',
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
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

class FuelPrice extends StatelessWidget {
  const FuelPrice({Key? key, required this.path, required this.price})
      : super(key: key);

  final String path;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  gradient: linearGradient,
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                  image: DecorationImage(
                    image: AssetImage(path),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
          //
        ),
        Expanded(
          flex: 6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  price,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        )
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
                  start: Offset(0, screenHeight * 0.6),
                  top: Offset(screenWidth * 0.25, screenHeight * 0.62),
                  end: Offset(screenWidth * 0.5, screenHeight * 0.5),
                ),
                BezierCurveSection(
                  start: Offset(screenWidth * 0.5, screenHeight * 0.5),
                  top: Offset(screenWidth * 0.75, screenHeight * 0.4),
                  end: Offset(screenWidth, screenHeight * 0.4),
                ),
              ],
            ),
            child: Container(
              height: screenHeight,
              color: const Color.fromARGB(255, 208, 14, 1),
            ),
          ),
        ],
      ),
    );
  }
}
