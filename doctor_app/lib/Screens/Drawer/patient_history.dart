import 'package:doctor_app/Global/global.dart';
import 'package:doctor_app/Widgets/my_appbar.dart';
import 'package:doctor_app/Widgets/my_body.dart';
import 'package:doctor_app/Widgets/my_button.dart';
import 'package:doctor_app/Widgets/my_textfield.dart';
import 'package:flutter/material.dart';

class PatientHistory extends StatefulWidget {
  const PatientHistory({super.key});

  @override
  State<PatientHistory> createState() => _PatientHistoryState();
}

class _PatientHistoryState extends State<PatientHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBody(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const MyAppBar(label: 'Patient History'),
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
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return const MyHistoryCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyHistoryCard extends StatelessWidget {
  const MyHistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Center(
        child: Column(
          children: [
            Container(
              width: size.width * 0.9,
              height: size.height * 0.07,
              decoration: BoxDecoration(
                color: mainThemeColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: blackColor.withOpacity(0.3),
                    blurRadius: 5,
                    offset: const Offset(0, 0),
                    spreadRadius: 1,
                  )
                ],
              ),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Image.asset('assets/dentist.png'),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'December 14, 2014',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: whiteColor.withOpacity(0.7),
                        ),
                      ),
                      Text(
                        'Dentist',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: whiteColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: size.width * 0.9,
              height: 160,
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                ),
                shadows: [
                  BoxShadow(
                    color: blackColor.withOpacity(0.3),
                    blurRadius: 5,
                    offset: const Offset(0, 0),
                    spreadRadius: 1,
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
                                    'Jane Cooper',
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
                            Text(
                              'Scheduled at: 08am - 12:45pm',
                              style: TextStyle(
                                color: textLightColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.30,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              '451525121545523',
                              style: TextStyle(
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
                      title: 'View patient History',
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
