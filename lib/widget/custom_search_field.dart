import 'package:flutter/material.dart';
import 'package:get_fuel_app/constants/app_constants.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2.0,
      borderRadius: BorderRadius.circular(25.0),
      child: Container(
        child: TextFormField(
          
          key: const ValueKey("search"),
          style: const TextStyle(
            fontSize: 18.0,
          ),
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            label: const Center(
              child: Text("Search"),
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
      ),
    );
  }
}
