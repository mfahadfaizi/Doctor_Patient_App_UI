import 'package:doctor_app/Global/global.dart';
import 'package:doctor_app/Widgets/my_body.dart';
import 'package:flutter/material.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: MyBody(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Transaction',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                YearlyReportCard(
                  size: size,
                  image: 'assets/persons.png',
                  heading: 'Last Year',
                  title: "1238",
                  content: "Total Patient",
                ),
                YearlyReportCard(
                  size: size,
                  image: 'assets/income.png',
                  heading: 'Last Year',
                  title: "\$40.012k",
                  content: "Total Income",
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Recent Patient',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              height: size.height * .13,
              padding: const EdgeInsets.all(12.0),
              width: size.width,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 0),
                    color: blackColor.withOpacity(0.1),
                    blurRadius: 1,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: ShapeDecoration(
                      color: blackColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jane Cooper',
                        style: TextStyle(
                          color: blackColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Age: 30',
                        style: TextStyle(
                          color: mainThemeColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '+92344 5462544',
                        style: TextStyle(
                          color: textLightColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class YearlyReportCard extends StatelessWidget {
  const YearlyReportCard({
    super.key,
    required this.size,
    required this.image,
    required this.heading,
    required this.title,
    required this.content,
  });

  final Size size;
  final String image;
  final String heading;
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .17,
      width: size.width * .45,
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 1.0,
            color: blackColor.withOpacity(0.2),
            offset: const Offset(0, 0),
            spreadRadius: 1.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: textLightColor.withOpacity(0.2),
                backgroundImage: AssetImage(image),
                maxRadius: 25,
                minRadius: 20,
              ),
              const SizedBox(width: 20),
              Text(
                heading,
                style: TextStyle(color: textLightColor, fontSize: 17),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
                color: mainThemeColor,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          Text(
            content,
            style: TextStyle(color: textLightColor, fontSize: 17),
          ),
        ],
      ),
    );
  }
}
