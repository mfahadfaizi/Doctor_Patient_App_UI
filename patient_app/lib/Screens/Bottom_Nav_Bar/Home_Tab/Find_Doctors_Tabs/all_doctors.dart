import 'package:flutter/material.dart';
import 'package:patient_app/Widgets/reuseable_container.dart';

class AllDoctors extends StatefulWidget {
  const AllDoctors({super.key});

  @override
  State<AllDoctors> createState() => _AllDoctorsState();
}

class _AllDoctorsState extends State<AllDoctors> {
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
