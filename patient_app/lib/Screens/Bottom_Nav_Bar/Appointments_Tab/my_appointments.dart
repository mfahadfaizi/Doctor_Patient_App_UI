import 'package:flutter/material.dart';
import 'package:patient_app/Global/global.dart';
import 'package:patient_app/Screens/Bottom_Nav_Bar/Home_Tab/book_appointment.dart';
import 'package:patient_app/Widgets/my_body.dart';
import 'package:patient_app/Widgets/my_button.dart';
import 'package:patient_app/Widgets/my_textfield.dart';

class MyAppointments extends StatefulWidget {
  const MyAppointments({super.key});

  @override
  State<MyAppointments> createState() => _MyAppointmentsState();
}

class _MyAppointmentsState extends State<MyAppointments> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: MyBody(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: size.height * 0.07),
        const Text(
          'My Appointments',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
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
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Container(
                      padding: const EdgeInsets.all(15.0),
                      margin: const EdgeInsets.symmetric(horizontal: 12.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Aug 25, 2023 - 10:00 AM',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const Divider(),
                          SizedBox(height: size.height * 0.01),
                          Row(
                            children: [
                              Image.asset(
                                'assets/doctor2.png',
                                height: 85,
                                width: 85,
                              ),
                              SizedBox(width: size.width * 0.02),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Dr. Olivia Bennett',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                  Text('Cardiologist',
                                      style: TextStyle(
                                          fontSize: 16, color: mainThemeColor)),
                                  const SizedBox(height: 5),
                                  const Row(children: [
                                    Icon(Icons.star,
                                        color: Colors.amber, size: 19),
                                    Icon(Icons.star,
                                        color: Colors.amber, size: 19),
                                    Icon(Icons.star,
                                        color: Colors.amber, size: 19)
                                  ]),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: size.height * 0.01),
                          const Divider(),
                          SizedBox(height: size.height * 0.01),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: size.height * 0.06,
                                width: size.width * 0.38,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: mainThemeColor.withOpacity(0.2)),
                                child: Center(
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(
                                        color: mainThemeColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.06,
                                width: size.width * 0.38,
                                child: MyButton(
                                    title: 'Reschedule',
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const BookAppointment()));
                                    }),
                              ),
                            ],
                          ),
                          SizedBox(height: size.height * 0.01),
                        ],
                      )),
                );
              }),
        )
      ]),
    ));
  }
}
