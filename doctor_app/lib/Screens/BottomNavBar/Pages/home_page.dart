import 'package:doctor_app/Global/global.dart';
import 'package:doctor_app/Screens/BottomNavBar/Pages/patient_list.dart';
import 'package:doctor_app/Screens/Drawer/my_drawer.dart';
import 'package:doctor_app/Widgets/my_appointment_card.dart';
import 'package:doctor_app/Widgets/my_body.dart';
import 'package:doctor_app/Widgets/my_textfield.dart';
import 'package:doctor_app/Widgets/patient_detail_dialog.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      key: scaffoldKey,
      drawer: const MyDrawer(),
      body: MyBody(
        width: 0.0,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
                child: Stack(
                  children: [
                    Container(
                      height: size.height * 0.18,
                      decoration: BoxDecoration(
                        color: mainThemeColor,
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                      ),
                    ),
                    Stack(
                      children: [
                        Positioned(
                          top: size.height * 0.065,
                          child: SizedBox(
                            width: size.width,
                            child: ListTile(
                              onTap: () {
                                setState(() {
                                  update = !update;
                                });
                              },
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              leading: InkWell(
                                  onTap: () {
                                    scaffoldKey.currentState!.openDrawer();
                                  },
                                  child: Image.asset(
                                    'assets/drawer.png',
                                    height: 30,
                                    width: 30,
                                  )),
                              title: Text(
                                'Hello, Dr!',
                                style: TextStyle(
                                    color: whiteColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              trailing: Image.asset(
                                'assets/surgeon.png',
                                height: 50,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: size.height * 0.12,
                          left: 0,
                          right: 0,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: MyTextField(
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
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.63,
                child: !update
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Image.asset('assets/no_appointment.png'),
                          ),
                        ],
                      )
                    : SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Today Patient',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (c) => const PatientList(
                                                  fromHome: true)));
                                    },
                                    child: Text(
                                      'See all >',
                                      style: TextStyle(color: textLightColor),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ListView.builder(
                              itemCount: 3,
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
                                          builder: (c) =>
                                              const PatientDetailDialog());
                                    },
                                  ),
                                );
                              },
                            ),
                            const SizedBox(height: 15),
                          ],
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool update = false;
}
