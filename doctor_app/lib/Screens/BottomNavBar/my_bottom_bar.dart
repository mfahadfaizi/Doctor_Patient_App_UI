import 'package:doctor_app/Screens/BottomNavBar/Pages/home_page.dart';
import 'package:doctor_app/Screens/BottomNavBar/Pages/appointment.dart';
import 'package:doctor_app/Screens/BottomNavBar/Pages/patient_list.dart';
import 'package:doctor_app/Screens/BottomNavBar/Pages/transaction.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/Global/global.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({super.key});

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  SnakeShape snakeShape = SnakeShape.circle;

  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: SnakeNavigationBar.color(
        behaviour: snakeBarStyle,
        snakeShape: snakeShape,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),

        ///configuration for SnakeNavigationBar.color
        snakeViewColor: mainThemeColor,
        selectedItemColor:
            snakeShape == SnakeShape.indicator ? mainThemeColor : null,
        unselectedItemColor: Colors.blueGrey,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.inventory_rounded), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card_rounded), label: ''),
        ],
      ),
    );
  }

  final List _widgetOptions = [
    const HomePage(),
    const PatientList(fromHome: false),
    const Appointment(),
    const Transactions(),
  ];
}
