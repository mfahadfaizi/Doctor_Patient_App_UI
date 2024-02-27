import 'package:flutter/material.dart';
import 'package:patient_app/Auth/login_screen.dart';
import 'package:patient_app/Global/global.dart';
import 'package:patient_app/Screens/Drawer/Medical_Records/medical_records.dart';
import 'package:patient_app/Screens/Drawer/help_center.dart';
import 'package:patient_app/Screens/Drawer/my_doctors.dart';
import 'package:patient_app/Screens/Drawer/privacy_policy.dart';
import 'package:patient_app/Screens/Drawer/profile.dart';
import 'package:patient_app/Screens/Drawer/settings.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      elevation: 0,
      child: Container(
        height: double.infinity,
        width: size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0, 0),
            colors: <Color>[
              Color(0xFF6F7FA1),
              Color(0xFF536184),
            ],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.07),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Profile()));
              },
              leading: Image.asset(
                'assets/girl1.png',
                scale: 1.1,
              ),
              title: Text('Maria Mustehsan',
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: whiteColor,
                    size: 17,
                  ),
                  const SizedBox(width: 5),
                  Text('090078601',
                      style: TextStyle(color: whiteColor, fontSize: 14))
                ],
              ),
            ),
            SizedBox(height: size.height * 0.07),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
              leading: Icon(Icons.person, size: 29, color: whiteColor),
              title: Text(
                'My Doctors',
                style: TextStyle(fontSize: 19, color: whiteColor),
              ),
              trailing:
                  Icon(Icons.arrow_forward_ios, size: 17, color: whiteColor),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyDoctors()));
              },
            ),
            SizedBox(height: size.height * 0.01),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
              leading: Icon(Icons.edit_document, size: 29, color: whiteColor),
              title: Text(
                'Medical Records',
                style: TextStyle(fontSize: 19, color: whiteColor),
              ),
              trailing:
                  Icon(Icons.arrow_forward_ios, size: 17, color: whiteColor),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MedicalRecords()));
              },
            ),
            SizedBox(height: size.height * 0.01),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
              leading: Icon(Icons.text_snippet, size: 29, color: whiteColor),
              title: Text(
                'Privacy & Policy',
                style: TextStyle(fontSize: 19, color: whiteColor),
              ),
              trailing:
                  Icon(Icons.arrow_forward_ios, size: 17, color: whiteColor),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PrivacyPolicy()));
              },
            ),
            SizedBox(height: size.height * 0.01),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
              leading: Icon(Icons.help, size: 29, color: whiteColor),
              title: Text(
                'Help Center',
                style: TextStyle(fontSize: 19, color: whiteColor),
              ),
              trailing:
                  Icon(Icons.arrow_forward_ios, size: 17, color: whiteColor),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HelpCenter()));
              },
            ),
            SizedBox(height: size.height * 0.01),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
              leading: Icon(Icons.settings, size: 29, color: whiteColor),
              title: Text(
                'Settings',
                style: TextStyle(fontSize: 19, color: whiteColor),
              ),
              trailing:
                  Icon(Icons.arrow_forward_ios, size: 17, color: whiteColor),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Settings()));
              },
            ),
            const Spacer(),
            ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
                leading: Icon(Icons.logout, size: 26, color: whiteColor),
                title: Text(
                  'Log out',
                  style: TextStyle(
                      fontSize: 20,
                      color: whiteColor,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          elevation: 0,
                          title: const Text(
                            'Log Out',
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                          content: Text(
                            'Are you sure you want to log out?',
                            style:
                                TextStyle(fontSize: 18, color: textLightColor),
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Cancel',
                                    style: TextStyle(
                                        color: mainThemeColor, fontSize: 18))),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LoginScreen()),
                                      (route) => false);
                                },
                                child: Text('Ok',
                                    style: TextStyle(
                                        color: mainThemeColor, fontSize: 18))),
                          ],
                        );
                      });
                }),
            SizedBox(height: size.height * 0.05),
          ],
        ),
      ),
    );
  }
}
