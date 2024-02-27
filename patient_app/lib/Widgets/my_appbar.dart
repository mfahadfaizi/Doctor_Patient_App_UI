import 'package:flutter/material.dart';
import 'package:patient_app/Global/global.dart';

class MyAppBar extends StatelessWidget {
  final String label;
  final Color? color;
  const MyAppBar({super.key, required this.label, this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: ListTile(
        onTap: () {
          Navigator.pop(context);
        },
        contentPadding: const EdgeInsets.all(0),
        leading: Container(
          padding: const EdgeInsets.only(
              top: 8.0, left: 11.0, bottom: 8.0, right: 5.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: whiteColor),
          child: Icon(
            Icons.arrow_back_ios,
            size: 18,
            color: textLightColor,
          ),
        ),
        title: Text(
          label,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: color),
        ),
      ),
    );
  }
}
