import 'package:flutter/material.dart';

class MyBody extends StatelessWidget {
  const MyBody({
    super.key,
    required this.child,
    this.width,
  });

  final Widget child;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background.png'), fit: BoxFit.cover)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width ?? 12.0),
        child: child,
      ),
    );
  }
}
