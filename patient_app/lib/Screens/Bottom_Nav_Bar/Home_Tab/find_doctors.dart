import 'package:flutter/material.dart';
import 'package:patient_app/Global/global.dart';
import 'package:patient_app/Screens/Bottom_Nav_Bar/Home_Tab/Find_Doctors_Tabs/all_doctors.dart';
import 'package:patient_app/Screens/Bottom_Nav_Bar/Home_Tab/Find_Doctors_Tabs/cardiology.dart';
import 'package:patient_app/Screens/Bottom_Nav_Bar/Home_Tab/Find_Doctors_Tabs/dentist.dart';
import 'package:patient_app/Screens/Bottom_Nav_Bar/Home_Tab/Find_Doctors_Tabs/physio_therapy.dart';
import 'package:patient_app/Widgets/my_appbar.dart';
import 'package:patient_app/Widgets/my_textfield.dart';

class FindDoctors extends StatefulWidget {
  const FindDoctors({super.key});

  @override
  State<FindDoctors> createState() => _FindDoctorsState();
}

class _FindDoctorsState extends State<FindDoctors> {
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
              length: 4,
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        const MyAppBar(label: 'Find Doctors'),
                        SizedBox(height: size.height * 0.02),
                        MyTextField(
                          hintText: 'Dentist',
                          leading: const Icon(Icons.search),
                        ),
                        SizedBox(height: size.height * 0.02),
                        TabBar(
                            indicatorSize: TabBarIndicatorSize.tab,
                            tabAlignment: TabAlignment.start,
                            dividerColor: whiteColor,
                            labelColor: whiteColor,
                            unselectedLabelColor: mainThemeColor,
                            labelPadding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            isScrollable: true,
                            indicator: BoxDecoration(
                                color: mainThemeColor,
                                borderRadius: BorderRadius.circular(10)),
                            tabs: [
                              Container(
                                  decoration: BoxDecoration(
                                      color: mainThemeColor.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(10)),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 35),
                                  child: const Tab(text: 'All')),
                              Container(
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: mainThemeColor.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(10)),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30),
                                  child: const Tab(text: 'Dentist')),
                              Container(
                                  decoration: BoxDecoration(
                                      color: mainThemeColor.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(10)),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25),
                                  child: const Tab(text: 'Cardiology')),
                              Container(
                                  decoration: BoxDecoration(
                                      color: mainThemeColor.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(10)),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25),
                                  child: const Tab(text: 'Physio Therapy')),
                            ]),
                        const Expanded(
                          child: TabBarView(children: [
                            AllDoctors(),
                            Dentist(),
                            Cardiology(),
                            PhysioTherapy(),
                          ]),
                        )
                      ])),
            )));
  }
}
