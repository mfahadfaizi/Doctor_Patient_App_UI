import 'package:flutter/material.dart';
import 'package:patient_app/Global/global.dart';
import 'package:patient_app/Screens/Drawer/Medical_Records/add_record.dart';
import 'package:patient_app/Widgets/my_appbar.dart';
import 'package:patient_app/Widgets/my_body.dart';
import 'package:patient_app/Widgets/my_button.dart';

class MedicalRecords extends StatefulWidget {
  const MedicalRecords({super.key});

  @override
  State<MedicalRecords> createState() => _MedicalRecordsState();
}

class _MedicalRecordsState extends State<MedicalRecords> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: MyBody(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const MyAppBar(
                label: '',
              ),
              SizedBox(height: size.height * 0.07),
              Image.asset(
                'assets/medicalrecords.png',
              ),
              SizedBox(height: size.height * 0.05),
              const Text(
                'Add a medical record',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.02),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Text(
                  'A detailed health history helps a doctor diagnose you better.',
                  style: TextStyle(color: textLightColor),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: size.height * 0.1),
              MyButton(
                  title: 'Add a record',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddRecord()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
