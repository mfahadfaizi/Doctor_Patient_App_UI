import 'package:flutter/material.dart';
import 'package:patient_app/Global/global.dart';
import 'package:patient_app/Widgets/my_appbar.dart';
import 'package:patient_app/Widgets/my_body.dart';
import 'package:patient_app/Widgets/my_button.dart';

class AllRecordsList extends StatefulWidget {
  const AllRecordsList({super.key});

  @override
  State<AllRecordsList> createState() => _AllRecordsListState();
}

class _AllRecordsListState extends State<AllRecordsList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: MyBody(
          child: Column(
        children: [
          const SizedBox(height: 30),
          const MyAppBar(label: 'All Records'),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(0),
              itemCount: 4,
              itemBuilder: ((context, index) {
                return Container(
                  padding: const EdgeInsets.all(15.0),
                  margin: const EdgeInsets.symmetric(vertical: 12.0),
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
                    children: [
                      Column(
                        children: [
                          Container(
                            height: size.height * 0.07,
                            width: size.width * 0.15,
                            decoration: BoxDecoration(
                                color: mainThemeColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text(
                              '27 FEB',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: whiteColor),
                            )),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: size.height * 0.03,
                            width: size.width * 0.14,
                            decoration: BoxDecoration(
                                color: mainThemeColor.withOpacity(0.2)),
                            child: Center(
                                child: Text(
                              'NEW',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: mainThemeColor),
                            )),
                          )
                        ],
                      ),
                      SizedBox(width: size.width * 0.04),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Records added by you',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            'Record for Abdullah mamun',
                            style: TextStyle(color: mainThemeColor),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '1 Prescription',
                            style: TextStyle(color: textLightColor),
                          )
                        ],
                      ),
                      SizedBox(width: size.width * 0.08),
                      PopupMenuButton(
                        iconColor: textLightColor,
                        itemBuilder: (context) =>
                            [_buildPopupMenuItem('Delete', Icons.delete)],
                      )
                    ],
                  ),
                );
              }),
            ),
          ),
          SizedBox(height: size.height * 0.05),
          MyButton(title: 'Add a record', onTap: () {}),
          SizedBox(height: size.height * 0.03),
        ],
      )),
    );
  }

  PopupMenuItem _buildPopupMenuItem(String title, IconData iconData) {
    return PopupMenuItem(
      child: Row(
        children: [
          Icon(iconData),
          Text(title),
        ],
      ),
    );
  }
}
