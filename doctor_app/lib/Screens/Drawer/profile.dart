import 'package:doctor_app/Global/global.dart';
import 'package:doctor_app/Widgets/my_appbar.dart';
import 'package:doctor_app/Widgets/my_body.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: MyBody(
        width: 0.0,
        child: Column(
          children: [
            Container(
              height: size.height * .45,
              width: size.width,
              decoration: BoxDecoration(
                color: mainThemeColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    MyAppBar(
                      label: 'Profile',
                      color: whiteColor,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Set up your profile',
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Update your profile to connect your doctor with better impression.',
                      style: TextStyle(
                        color: whiteColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    //Image Picker Custom
                    Center(
                      child: Stack(
                        children: [
                          CircleAvatar(
                            maxRadius: size.height * .075,
                            minRadius: size.height * .07,
                            backgroundImage:
                                const AssetImage('assets/doctor2.png'),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: whiteColor),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.camera_alt)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Text(
                    'Personal information',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: blackColor,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const EditProfileCard(title: 'Name', name: 'Dr Jane Hames'),
                  const EditProfileCard(
                      title: 'Contact Number', name: '+8801800000000'),
                  const EditProfileCard(
                      title: 'Date of birth', name: 'DD MM YYYY'),
                  const EditProfileCard(title: 'Age', name: '35'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EditProfileCard extends StatelessWidget {
  const EditProfileCard({
    super.key,
    required this.title,
    required this.name,
    this.onTap,
  });
  final String title;
  final String name;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4.0),
      padding: const EdgeInsets.only(left: 18.0),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: blackColor.withOpacity(0.1),
            blurRadius: 1,
            offset: const Offset(0, 0),
            spreadRadius: 1.5,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              color: mainThemeColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  name,
                  style: TextStyle(fontSize: 18, color: textLightColor),
                ),
              ),
              InkWell(
                onTap: onTap,
                child: const Icon(
                  Icons.edit_outlined,
                  size: 25,
                ),
              ),
              const SizedBox(width: 15),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
