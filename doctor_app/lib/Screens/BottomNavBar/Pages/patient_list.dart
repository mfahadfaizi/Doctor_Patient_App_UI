import 'package:doctor_app/Global/global.dart';
import 'package:doctor_app/Widgets/my_appbar.dart';
import 'package:doctor_app/Widgets/my_appointment_card.dart';
import 'package:doctor_app/Widgets/my_body.dart';
import 'package:doctor_app/Widgets/my_textfield.dart';
import 'package:doctor_app/Widgets/patient_detail_dialog.dart';
import 'package:flutter/material.dart';

class PatientList extends StatefulWidget {
  const PatientList({super.key, required this.fromHome});
  final bool fromHome;

  @override
  State<PatientList> createState() => _PatientListState();
}

class _PatientListState extends State<PatientList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBody(
        child: SingleChildScrollView(
          child: Column(
            children: [
              widget.fromHome == true
                  ? const SizedBox(height: 20)
                  : const SizedBox(height: 60),
              widget.fromHome == true
                  ? const SizedBox()
                  : const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Patient List',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
              widget.fromHome == true
                  ? const MyAppBar(label: 'Patient List')
                  : const SizedBox(),
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
                itemCount: 4,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Center(
                    child: MyAppointmentCard(
                      name: 'Jane Cooper',
                      date: 'Dec 14, 2014',
                      time: '08am - 12:45pm',
                      number: '451525121545523',
                      btnName: 'View Detial patient',
                      onTap: () {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (context) {
                            return const PatientDetailDialog();
                          },
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
