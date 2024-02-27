import 'package:doctor_app/Global/global.dart';
import 'package:doctor_app/OnBoard/onboard_two.dart';
import 'package:doctor_app/Widgets/my_button.dart';
import 'package:flutter/material.dart';

class OnboardingOne extends StatefulWidget {
  const OnboardingOne({super.key});

  @override
  State<OnboardingOne> createState() => _OnboardingOneState();
}

class _OnboardingOneState extends State<OnboardingOne> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background.png'), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              SizedBox(height: size.height * 0.14),
              const CircleAvatar(
                backgroundImage: AssetImage('assets/onboard.png'),
                minRadius: 150,
                maxRadius: 160,
              ),
              SizedBox(height: size.height * 0.05),
              const Text(
                'Find Trusted Doctors',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.01),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Text(
                  'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
                  style: TextStyle(color: textLightColor),
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(),
              MyButton(
                  title: 'Get Started',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OnboardingTwo()));
                  }),
              SizedBox(height: size.height * 0.01),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Skip',
                    style: TextStyle(color: textLightColor),
                  )),
              SizedBox(height: size.height * 0.05),
            ],
          ),
        ),
      ),
    );
  }
}
