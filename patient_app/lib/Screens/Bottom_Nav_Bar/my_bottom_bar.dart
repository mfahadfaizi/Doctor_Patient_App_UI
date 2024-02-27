import 'package:flutter/material.dart';
import 'package:patient_app/Global/global.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:patient_app/Screens/Bottom_Nav_Bar/Appointments_Tab/my_appointments.dart';
import 'package:patient_app/Screens/Bottom_Nav_Bar/Favorite_Tab/favorite.dart';
import 'package:patient_app/Screens/Bottom_Nav_Bar/Home_Tab/home_page.dart';

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
        snakeViewColor: mainThemeColor,
        unselectedItemColor: Colors.blueGrey,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_contact_calendar_outlined), label: ''),
        ],
      ),
    );
  }

  final List _widgetOptions = [
    const HomePage(),
    const Favorite(),
    const MyAppointments(),
  ];
}
