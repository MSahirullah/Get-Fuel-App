import 'package:flutter/material.dart';
import 'package:get_fuel_app/widget/custom_search_field.dart';

class Map extends StatelessWidget {
  const Map({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 200,
        child: Container(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: const [
                SizedBox(
                  height: 15,
                ),
                CustomSearchField(),
                SizedBox(
                  height: 25,
                ),
              ],
            )),
      ),
    );
  }
}
