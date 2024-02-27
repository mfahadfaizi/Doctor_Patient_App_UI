import 'package:flutter/material.dart';
import 'package:patient_app/Global/global.dart';

class MyButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final Color? color;
  final String? icon;
  final Color? titleColor;

  const MyButton(
      {super.key,
      required this.title,
      required this.onTap,
      this.color,
      this.icon,
      this.titleColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: double.infinity,
      child: ElevatedButton.icon(
        icon: icon == null
            ? const Text('')
            : Image.asset(
                '$icon',
                height: 20,
                fit: BoxFit.cover,
              ),
        style: ElevatedButton.styleFrom(
            foregroundColor: titleColor ?? whiteColor,
            backgroundColor:
                icon == null ? const Color(0xFF0EBE7F) : whiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            )),
        onPressed: onTap,
        label: FittedBox(
          child: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
      ),
    );
  }
}
