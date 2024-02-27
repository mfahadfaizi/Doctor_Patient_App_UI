import 'package:flutter/material.dart';
import 'package:patient_app/Global/global.dart';

class Availability extends StatefulWidget {
  const Availability({super.key});

  @override
  State<Availability> createState() => _AvailabilityState();
}

class _AvailabilityState extends State<Availability> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: size.height * 0.02),
              Container(
                  padding: const EdgeInsets.all(12.0),
                  width: size.width,
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
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Monday',
                              style: TextStyle(color: textLightColor)),
                          Text('Tuesday',
                              style: TextStyle(color: textLightColor)),
                          Text('Wednesday',
                              style: TextStyle(color: textLightColor)),
                          Text('Thursday',
                              style: TextStyle(color: textLightColor)),
                          Text('Friday',
                              style: TextStyle(color: textLightColor)),
                          Text('Saturday',
                              style: TextStyle(color: textLightColor)),
                          Text('Sunday',
                              style: TextStyle(color: textLightColor)),
                        ],
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('00:00 - 00:00'),
                          Text('00:00 - 00:00'),
                          Text('00:00 - 00:00'),
                          Text('00:00 - 00:00'),
                          Text('00:00 - 00:00'),
                          Text('00:00 - 00:00'),
                          Text('00:00 - 00:00'),
                        ],
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
