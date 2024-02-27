import 'package:flutter/material.dart';
import 'package:patient_app/Widgets/my_appbar.dart';
import 'package:patient_app/Widgets/my_body.dart';
import 'package:patient_app/Widgets/my_textfield.dart';
import 'package:patient_app/Widgets/reuseable_container.dart';

class MyDoctors extends StatefulWidget {
  const MyDoctors({super.key});

  @override
  State<MyDoctors> createState() => _MyDoctorsState();
}

class _MyDoctorsState extends State<MyDoctors> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: MyBody(
      child: Column(children: [
        const SizedBox(height: 20),
        const MyAppBar(label: 'My Doctors'),
        SizedBox(height: size.height * 0.02),
        MyTextField(
          hintText: 'Search',
          leading: const Icon(Icons.search),
        ),
        SizedBox(height: size.height * 0.01),
        Expanded(
          child: ListView.builder(
              padding: const EdgeInsets.all(0),
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: ReuseableContainer());
              }),
        )
      ]),
    ));
  }
}
