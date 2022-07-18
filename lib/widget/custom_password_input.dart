import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_fuel_app/constants/app_constants.dart';

class CustomPasswordInputField extends StatefulWidget {
  const CustomPasswordInputField({Key? key}) : super(key: key);

  @override
  State<CustomPasswordInputField> createState() =>
      _CustomPasswordInputFieldState();
}

class _CustomPasswordInputFieldState extends State<CustomPasswordInputField> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2.0,
      borderRadius: BorderRadius.circular(25.0),
      child: TextField(
        inputFormatters: [
          LengthLimitingTextInputFormatter(50),
        ],
        key: const ValueKey("password"),
        style: const TextStyle(
          fontSize: 18.0,
        ),
        obscureText: _isObscure,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(18.0),
          label: const Center(
            child: Text("Password"),
          ),
          labelStyle: const TextStyle(
            color: inputFieldTextColor,
            fontSize: 18.0,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: inputFieldBorderColor),
            borderRadius: BorderRadius.circular(25.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: const BorderSide(color: inputFieldBorderColor),
          ),
          suffixIcon: IconButton(
            icon: Icon(
              _isObscure ? Icons.visibility : Icons.visibility_off,
              color: inputFieldTextColor,
            ),
            padding: const EdgeInsets.only(right: 5.0),
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            },
          ),
        ),
      ),
    );
  }
}
