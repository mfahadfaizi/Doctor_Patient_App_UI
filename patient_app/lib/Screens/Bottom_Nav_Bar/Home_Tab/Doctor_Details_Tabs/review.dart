import 'package:flutter/material.dart';
import 'package:patient_app/Global/global.dart';

class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
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
              ListView.builder(
                  padding: const EdgeInsets.all(0),
                  shrinkWrap: true,
                  itemCount: 4,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Container(
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
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/satisfied.png',
                                      height: 20, width: 20),
                                  SizedBox(width: size.width * 0.02),
                                  const Text('Satisfied',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16)),
                                  SizedBox(width: size.width * 0.02),
                                  const Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: Colors.amber, size: 16),
                                      Icon(Icons.star,
                                          color: Colors.amber, size: 16),
                                      Icon(Icons.star,
                                          color: Colors.amber, size: 16),
                                      Icon(Icons.star,
                                          color: Colors.amber, size: 16),
                                      Icon(Icons.star_outline,
                                          color: Colors.amber, size: 16),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: size.height * 0.01),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore',
                                style: TextStyle(color: textLightColor),
                              )
                            ],
                          )),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
