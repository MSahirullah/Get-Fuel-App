// import 'package:flutter/material.dart';
// import 'package:get_fuel_app/widget/custom_search_field.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class Map extends StatefulWidget {
//   const Map({Key? key}) : super(key: key);

//   @override
//   State<Map> createState() => _MapState();
// }

// class _MapState extends State<Map> {

//   late GoogleMapController mapController;
//   final LatLng _center = const LatLng(45.521563, -122.677433);

//     void _onMapCreated(GoogleMapController controller) {
//     mapController = controller;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SizedBox(
//         height: 200,
//         child: Container(
//           padding: const EdgeInsets.all(30.0),
//           child: Column(
//             children: const [
//               SizedBox(
//                 height: 15,
//               ),
//               CustomSearchField(),
//               SizedBox(
//                 height: 25,
//               ),

//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get_fuel_app/widget/custom_search_field.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map extends StatefulWidget {
  const Map({Key? key}) : super(key: key);
  @override
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map> {
  late GoogleMapController mapController;

  final LatLng showLocation = const LatLng(7.2527, 80.4594);
  Set<Marker> markers = Set(); //markers for google map

  void initState() {
    markers.add(Marker(
      //add marker on google map
      markerId: MarkerId(showLocation.toString()),
      position: showLocation, //position of marker
      infoWindow: InfoWindow(
        //popup info
        title: 'My Custom Title ',
        snippet: 'My Custom Subtitle',
      ),
      icon: BitmapDescriptor.defaultMarker, //Icon for Marker
    ));

    //you can add more markers here
    super.initState();
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(bottom: 50),
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                markers: markers,
                mapType: MapType.normal,
                initialCameraPosition: CameraPosition(
                  target: showLocation,
                  zoom: 15.0,
                ),
              ),
            ),
          ),
          Positioned(
              top: 50,
              left: 20, //0 is starting at left, use it to give left-margin
              right: 20, //0 is ending at right, use it to give right-margin
              child: Container(child: CustomSearchField()))
        ],
      ),
    );
  }
}
