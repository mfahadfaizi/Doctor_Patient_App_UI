import 'package:flutter/material.dart';
import 'package:patient_app/Widgets/reuseable_container.dart';

class Cardiology extends StatefulWidget {
  const Cardiology({super.key});

  @override
  State<Cardiology> createState() => _CardiologyState();
}

class _CardiologyState extends State<Cardiology> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
          child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: ReuseableContainer(),
                );
              })),
    );
  }
}
