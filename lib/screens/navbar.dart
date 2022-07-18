import 'package:flutter/material.dart';
import 'package:get_fuel_app/screens/fuel_details.dart';
import 'package:get_fuel_app/screens/home.dart';
import 'package:get_fuel_app/screens/map.dart';
import 'package:get_fuel_app/screens/profile.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    Home(),
    FuelDetails(),
    Map(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      extendBody: true,
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color.fromARGB(92, 0, 0, 0),
              blurRadius: 8,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
            onTap: _onItemTapped,
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            iconSize: 25.0,
            selectedIconTheme: const IconThemeData(
              
              color: Colors.red,
            ),
            unselectedIconTheme: const IconThemeData(
              color: Colors.grey,
            ),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.grey,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                tooltip: "Home",
                label: "Home",
                icon: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: const Icon(
                    Icons.home,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                tooltip: "Fuel",
                label: "Fuel",
                icon: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: const Icon(
                    Icons.local_gas_station_rounded,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                tooltip: "Map",
                label: "Map",
                icon: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: const Icon(
                    Icons.location_pin,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                tooltip: "Profile",
                label: "Profile",
                icon: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: const Icon(
                    Icons.person,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
