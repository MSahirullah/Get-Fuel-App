import 'package:flutter/material.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                      padding: const EdgeInsets.only(
                          top: 20.0, left: 30.0, right: 30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Fuel Status',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 175,
                            alignment: Alignment.center,
                            child: SfRadialGauge(
                              axes: <RadialAxis>[
                                RadialAxis(
                                  interval: 10,
                                  startAngle: 270,
                                  endAngle: 270,
                                  showTicks: false,
                                  showLabels: false,
                                  axisLineStyle:
                                      const AxisLineStyle(thickness: 20),
                                  pointers: const <GaugePointer>[
                                    RangePointer(
                                        value: 40,
                                        width: 20,
                                        color: Color.fromARGB(255, 255, 8, 0),
                                        enableAnimation: true,
                                        cornerStyle: CornerStyle.endCurve)
                                  ],
                                  annotations: <GaugeAnnotation>[
                                    GaugeAnnotation(
                                      axisValue: 50,
                                      positionFactor: 0.15,
                                      widget: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Text(
                                            '100L',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 25),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Total Weekly',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                                fontSize: 15),
                                          ),
                                          Text(
                                            'Quota',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  const Text('60L',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16)),
                                  const SizedBox(width: 5),
                                  const Text(
                                    'Used',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 8,
                                    height: 8,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.red,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  const Text(
                                    '40L',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                  const SizedBox(width: 5),
                                  const Text(
                                    'Available',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: screenWidth,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Color.fromARGB(66, 0, 0, 0),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            flex: 6,
                            child: Container(
                              height: 150,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/fuelling.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Container(
                              padding: const EdgeInsets.all(15.0),
                              child: const Text(
                                "Fuel Pass which allows to purchase a guaranteed quota of fuel per week for personal vehicle.",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
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
                    const SizedBox(height: 75),
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
                  start: Offset(0, screenHeight * 0.25),
                  top: Offset(screenWidth * 0.25, screenHeight * 0.6),
                  end: Offset(screenWidth * 0.5, screenHeight * 0.7),
                ),
                BezierCurveSection(
                  start: Offset(screenWidth * 0.5, screenHeight * 0.4),
                  top: Offset(screenWidth * 0.75, screenHeight * 0.7),
                  end: Offset(screenWidth, screenHeight),
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
