import 'package:doctor_app/Global/global.dart';
import 'package:doctor_app/Widgets/my_button.dart';
import 'package:flutter/material.dart';

class MyAppointmentCard extends StatelessWidget {
  const MyAppointmentCard({
    super.key,
    this.name,
    this.date,
    this.time,
    this.number,
    this.btnName,
    this.onTap,
  });

  final String? name;
  final String? date;
  final String? time;
  final String? number;
  final String? btnName;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
          width: size.width * 0.9,
          height: 160,
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            shadows: [
              BoxShadow(
                color: blackColor.withOpacity(0.2),
                blurRadius: 20,
                offset: const Offset(0, 0),
                spreadRadius: 0,
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: ShapeDecoration(
                      color: blackColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                '$name',
                                style: TextStyle(
                                  color: blackColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Image.asset('assets/download.png'),
                            const SizedBox(width: 10),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                '$date',
                                style: TextStyle(
                                  color: textLightColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -0.30,
                                ),
                              ),
                            ),
                            Text(
                              '$time',
                              style: TextStyle(
                                color: textLightColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.30,
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '$number',
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: size.width * 0.85,
                height: 40,
                child: MyButton(
                  title: '$btnName',
                  onTap: onTap,
                ),
              ),
            ],
          )),
    );
  }
}
