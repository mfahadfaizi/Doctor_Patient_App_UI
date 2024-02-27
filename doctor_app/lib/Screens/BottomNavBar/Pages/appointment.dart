import 'package:doctor_app/Global/global.dart';
import 'package:doctor_app/Widgets/alert_dialog.dart';
import 'package:doctor_app/Widgets/appointment_request_card.dart';
import 'package:doctor_app/Widgets/my_body.dart';
import 'package:doctor_app/Widgets/my_textfield.dart';
import 'package:doctor_app/Widgets/request_detail_dialog.dart';
import 'package:flutter/material.dart';

class Appointment extends StatefulWidget {
  const Appointment({super.key});

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBody(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 60),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Appointment',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              MyTextField(
                hintText: 'Search...',
                leading: Icon(
                  Icons.search,
                  color: textLightColor,
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.cancel_outlined,
                    color: textLightColor,
                    size: 20,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  width: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: mainThemeColor.withOpacity(0.15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Date',
                        style: TextStyle(
                            color: mainThemeColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        Icons.calendar_month,
                        color: mainThemeColor,
                      ),
                    ],
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return AppointmentRequestCard(
                    name: 'Jane Cooper',
                    date: 'Dec 14, 2014',
                    time: '08am - 12:45pm',
                    number: '451525121545523',
                    removeBtn: 'Decline',
                    removeTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => const MyAlertDialog(
                          title: "Delete Appointment",
                          content:
                              "Are you sure you want to Delete this Request?",
                        ),
                      );
                    },
                    acceptBtn: 'Accept Appointment',
                    acceptTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => const MyAlertDialog(
                          title: "Accept Appointment",
                          content:
                              "Are you sure you want to Accept this Request?",
                        ),
                      );
                    },
                    mainTap: () {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (context) {
                          return const RequestDetailDialog();
                        },
                      );
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
