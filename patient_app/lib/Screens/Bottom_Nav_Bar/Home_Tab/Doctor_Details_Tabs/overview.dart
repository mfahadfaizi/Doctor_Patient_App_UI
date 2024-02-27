import 'package:flutter/material.dart';
import 'package:patient_app/Global/global.dart';

class Overview extends StatefulWidget {
  const Overview({super.key});

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.02),
              const Text(
                'Services',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '• Acne Treatment',
                    style: TextStyle(color: textLightColor),
                  ),
                  Text('• Alopecia', style: TextStyle(color: textLightColor)),
                ],
              ),
              SizedBox(height: size.height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('• Acne Treatment',
                      style: TextStyle(color: textLightColor)),
                  Text('• Alopecia', style: TextStyle(color: textLightColor)),
                ],
              ),
              SizedBox(height: size.height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('• Acne Treatment',
                      style: TextStyle(color: textLightColor)),
                  Text('• Alopecia', style: TextStyle(color: textLightColor)),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              const Text('Condition Treated',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: size.height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '• Skin Allergy',
                    style: TextStyle(color: textLightColor),
                  ),
                  Text('• Moles', style: TextStyle(color: textLightColor)),
                ],
              ),
              SizedBox(height: size.height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '• Skin Allergy',
                    style: TextStyle(color: textLightColor),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    '• Moles',
                    style: TextStyle(color: textLightColor),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '• Skin Allergy',
                    style: TextStyle(color: textLightColor),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    '• Moles',
                    style: TextStyle(color: textLightColor),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              const Text(
                'Education',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '• M.B.B.S., 2007',
                    style: TextStyle(color: textLightColor),
                  ),
                  Text('• F.C.P.S., 2016',
                      style: TextStyle(color: textLightColor)),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              const Text(
                'Specialization',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '• Special Cardiologist',
                    style: TextStyle(color: textLightColor),
                  ),
                  const Text(''),
                ],
              ),
              SizedBox(height: size.height * 0.02)
            ],
          ),
        ),
      ),
    );
  }
}
