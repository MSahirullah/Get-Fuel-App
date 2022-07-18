import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_fuel_app/constants/app_constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.valueKey,
      this.validator,
      required this.labelText,
      required this.inputType,
      required this.inputLength})
      : super(key: key);

  final String valueKey;
  final String? Function(String?)? validator;
  final String labelText;
  final int inputLength;
  final String inputType;

  @override
  Widget build(BuildContext context) {
    TextInputFormatter textInputFormatter =
        FilteringTextInputFormatter.allow(RegExp(r'.'));

    if (inputType == 'mobile') {
      textInputFormatter = FilteringTextInputFormatter.allow(RegExp(r'[0-9]'));
    } else if (inputType == 'name') {
      textInputFormatter =
          FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z. ]'));
    } else if (inputType == 'nic') {
      textInputFormatter =
          FilteringTextInputFormatter.allow(RegExp(r'[0-9][vV]?'));
    } else if (inputType == 'email') {
      textInputFormatter = FilteringTextInputFormatter.allow(
          RegExp(r'[a-zA-Z.0-9_#!$+-/=?^~`{|}@]'));
    } else {
      FilteringTextInputFormatter.allow(RegExp(r'.'));
    }

    return Material(
      elevation: 2.0,
      borderRadius: BorderRadius.circular(25.0),
      child: TextFormField(
        key: ValueKey(valueKey),
        style: const TextStyle(
          fontSize: 18.0,
        ),
        validator: validator,
        keyboardType: inputType == 'mobile' ? TextInputType.number : null,
        inputFormatters: [
          textInputFormatter,
          LengthLimitingTextInputFormatter(inputLength),
        ],
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          label: Center(
            child: Text(labelText),
          ),
          contentPadding: const EdgeInsets.all(18.0),
          labelStyle: const TextStyle(
            color: inputFieldTextColor,
            fontSize: 18.0,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: inputFieldBorderColor),
            borderRadius: BorderRadius.circular(25.0),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: inputFieldBorderColor),
            borderRadius: BorderRadius.circular(25.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: const BorderSide(color: inputFieldBorderColor),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: const BorderSide(color: inputFieldBorderColor),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: const BorderSide(color: inputFieldBorderColor),
          ),
        ),
      ),
    );
  }
}
