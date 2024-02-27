import 'package:flutter/material.dart';
import 'package:patient_app/Global/global.dart';
import 'package:patient_app/Screens/Bottom_Nav_Bar/Home_Tab/book_appointment.dart';
import 'package:patient_app/Screens/Bottom_Nav_Bar/Home_Tab/doctor_details.dart';
import 'package:patient_app/Widgets/my_button.dart';

class ReuseableContainer extends StatefulWidget {
  const ReuseableContainer({super.key});

  @override
  State<ReuseableContainer> createState() => _ReuseableContainerState();
}

class _ReuseableContainerState extends State<ReuseableContainer> {
  bool addFavorite = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DoctorDetails()));
      },
      child: Container(
        padding: const EdgeInsets.all(15.0),
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
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/doctor2.png',
                  height: 90,
                  width: 90,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      const Text(
                        'Dr. Pediatric Dentist',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: size.width * 0.11),
                      InkWell(
                          onTap: () {
                            setState(() {
                              addFavorite = !addFavorite;
                            });
                          },
                          child: addFavorite
                              ? const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                )
                              : Icon(
                                  Icons.favorite_outline,
                                  color: textLightColor,
                                ))
                    ]),
                    const SizedBox(height: 3),
                    Text(
                      '7 Years experience',
                      style: TextStyle(color: textLightColor),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(
                          Icons.circle,
                          color: mainThemeColor,
                          size: 16,
                        ),
                        const SizedBox(width: 5),
                        Text('87%',
                            style:
                                TextStyle(color: textLightColor, fontSize: 12)),
                        SizedBox(width: size.width * 0.05),
                        Icon(
                          Icons.circle,
                          color: mainThemeColor,
                          size: 16,
                        ),
                        const SizedBox(width: 5),
                        Text('69 Patient Stories',
                            style:
                                TextStyle(color: textLightColor, fontSize: 12))
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: size.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Doctor Fee',
                      style: TextStyle(
                          color: mainThemeColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text('\$',
                            style: TextStyle(
                                color: mainThemeColor,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(width: 5),
                        Text(
                          '28.00',
                          style: TextStyle(
                            color: textLightColor,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                    height: size.height * 0.06,
                    width: size.width * 0.38,
                    child: MyButton(
                        title: 'Book Now',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const BookAppointment()));
                        })),
              ],
            )
          ],
        ),
      ),
    );
  }
}
