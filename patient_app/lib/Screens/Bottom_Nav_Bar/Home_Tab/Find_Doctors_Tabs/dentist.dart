import 'package:flutter/material.dart';
import 'package:patient_app/Widgets/reuseable_container.dart';

class Dentist extends StatefulWidget {
  const Dentist({super.key});

  @override
  State<Dentist> createState() => _DentistState();
}

class _DentistState extends State<Dentist> {
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
