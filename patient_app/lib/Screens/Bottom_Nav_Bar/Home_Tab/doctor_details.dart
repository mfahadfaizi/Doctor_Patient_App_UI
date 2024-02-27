import 'package:flutter/material.dart';
import 'package:patient_app/Global/global.dart';
import 'package:patient_app/Screens/Bottom_Nav_Bar/Home_Tab/Doctor_Details_Tabs/availability.dart';
import 'package:patient_app/Screens/Bottom_Nav_Bar/Home_Tab/Doctor_Details_Tabs/overview.dart';
import 'package:patient_app/Screens/Bottom_Nav_Bar/Home_Tab/Doctor_Details_Tabs/review.dart';
import 'package:patient_app/Screens/Bottom_Nav_Bar/Home_Tab/book_appointment.dart';
import 'package:patient_app/Widgets/my_appbar.dart';
import 'package:patient_app/Widgets/my_button.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({super.key});

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
            height: double.infinity,
            width: size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/background.png'),
                    fit: BoxFit.cover)),
            child: DefaultTabController(
              length: 3,
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(children: [
                    const SizedBox(height: 20),
                    const MyAppBar(label: 'Doctor Details'),
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                    SizedBox(
                                      width: size.width *
                                          0.6, // Take up full available width
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Dr. Jimmy',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                            size: 25,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      'Pediatric Dentist',
                                      style: TextStyle(
                                          color: textLightColor, fontSize: 16),
                                    ),
                                    const Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 18,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 18,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 18,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star_outline,
                                          size: 18,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star_outline,
                                          size: 18,
                                          color: Colors.amber,
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(height: size.height * 0.01),
                            const Text(
                              'Descriptions',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore',
                              style: TextStyle(color: textLightColor),
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
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        Text('\$',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: mainThemeColor,
                                                fontWeight: FontWeight.bold)),
                                        const SizedBox(width: 5),
                                        Text(
                                          '28.00',
                                          style: TextStyle(
                                            fontSize: 16,
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
                        )),
                    SizedBox(height: size.height * 0.03),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 40),
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
                      child: TabBar(
                          indicatorSize: TabBarIndicatorSize.tab,
                          tabAlignment: TabAlignment.center,
                          labelColor: mainThemeColor,
                          unselectedLabelColor: textLightColor,
                          labelPadding:
                              const EdgeInsets.symmetric(horizontal: 15.0),
                          isScrollable: true,
                          indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          tabs: const [
                            Tab(text: 'Availability'),
                            Tab(text: 'Overview'),
                            Tab(text: 'Review'),
                          ]),
                    ),
                    const Expanded(
                      child: TabBarView(children: [
                        Availability(),
                        Overview(),
                        Review(),
                      ]),
                    )
                  ])),
            )));
  }
}
