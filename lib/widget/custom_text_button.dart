import 'package:get_fuel_app/constants/app_constants.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {Key? key,
      required this.widget,
      required this.valueKey,
      required this.label})
      : super(key: key);

  final Widget widget;
  final String valueKey;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2.0,
      borderRadius: BorderRadius.circular(25.0),
      child: TextButton(
        key: ValueKey(valueKey),
        style: ButtonStyle(
          overlayColor:
              MaterialStateColor.resolveWith((states) => Colors.transparent),
          padding:
              MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(0)),
        ),
        child: Ink(
          decoration: BoxDecoration(
            gradient: linearGradient,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.center,
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (BuildContext context) {
              return widget;
            }),
          );
        },
      ),
    );
  }
}
