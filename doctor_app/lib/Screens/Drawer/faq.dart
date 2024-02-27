import 'package:doctor_app/Global/global.dart';
import 'package:doctor_app/Widgets/my_appbar.dart';
import 'package:doctor_app/Widgets/my_body.dart';
import 'package:doctor_app/Widgets/my_button.dart';
import 'package:flutter/material.dart';

class FAQ extends StatefulWidget {
  const FAQ({super.key});

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: MyBody(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const MyAppBar(label: 'FAQ'),
            Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            questions[index]["open"] =
                                !questions[index]["open"];
                          });
                        },
                        child: AnimatedContainer(
                          curve: Curves.fastOutSlowIn,
                          duration: const Duration(milliseconds: 300),
                          width: size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      questions[index]["open"] == false
                                          ? BorderRadius.circular(9.5)
                                          : const BorderRadius.only(
                                              topLeft: Radius.circular(9.0),
                                              topRight: Radius.circular(9.0)),
                                ),
                                height: size.height * .055,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        questions[index]['value'],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                      Icon(questions[index]["open"] == false
                                          ? Icons.add
                                          : Icons.close),
                                    ],
                                  ),
                                ),
                              ),
                              AnimatedContainer(
                                height: questions[index]["open"] == false
                                    ? 0
                                    : size.height * 0.22,
                                curve: Curves.fastOutSlowIn,
                                duration: const Duration(milliseconds: 300),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 15.0),
                                width: size.width,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0)),
                                ),
                                child: Text(
                                  lorem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: questions.length)),
            Text(
              'Still stuck? Help us a mail away',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: blackColor,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 20),
            MyButton(
              title: 'Send Message',
              onTap: () {},
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  String lorem =
      "Lorem ipsum dolor Lorem ipsum dolor sit amet, consectetur adipiscing elit, Lorem ipsum dolor Lorem ipsum dolor sit amet, consectetur adipiscing elit, seddo eiusmod tempor incididunt.sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt";

  List questions = [
    {
      "value": "What is the Doctor Application?",
      "open": false,
    },
    {
      "value": "How do I subscribe?",
      "open": false,
    },
    {
      "value": "Is patient data secure?",
      "open": false,
    },
    {
      "value": "Can I customize my profile?",
      "open": false,
    },
    {
      "value": "Can I customize my profile?",
      "open": false,
    },
    {
      "value": "Does the app support consultations?",
      "open": false,
    },
  ];
}
