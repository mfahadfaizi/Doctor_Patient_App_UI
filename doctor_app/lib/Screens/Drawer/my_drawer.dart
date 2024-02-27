import 'package:doctor_app/Global/global.dart';
import 'package:doctor_app/Screens/Drawer/faq.dart';
import 'package:doctor_app/Screens/Drawer/help_center.dart';
import 'package:doctor_app/Screens/Drawer/patient_history.dart';
import 'package:doctor_app/Screens/Drawer/profile.dart';
import 'package:flutter/material.dart';

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: size.height * 0.05),
              ListTile(
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
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (c) => const Profile()));
                },
              ),
              SizedBox(height: size.height * 0.06),
              MyDrawerTile(
                icon: Icons.person,
                title: 'Patient History',
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (c) => const PatientHistory()));
                },
              ),
              SizedBox(height: size.height * 0.01),
              MyDrawerTile(
                icon: Icons.edit_document,
                title: 'Transaction',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: size.height * 0.01),
              MyDrawerTile(
                icon: Icons.text_snippet,
                title: 'Privacy & Policy',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: size.height * 0.01),
              MyDrawerTile(
                icon: Icons.help,
                title: 'Help Center',
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (c) => const HelpCenter()));
                },
              ),
              SizedBox(height: size.height * 0.01),
              MyDrawerTile(
                icon: Icons.settings,
                title: 'Settings',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: size.height * 0.01),
              MyDrawerTile(
                icon: Icons.help,
                title: "FAQ",
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (c) => const FAQ()));
                },
              ),
              SizedBox(height: size.height * 0.01),
              MyDrawerTile(
                icon: Icons.settings,
                title: 'About',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: size.height * 0.01),
              MyDrawerTile(
                icon: Icons.settings,
                title: 'Term & Condition',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: size.height * 0.01),
              MyDrawerTile(
                icon: Icons.logout,
                title: 'Log out',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: size.height * 0.05),
            ],
          ),
        ),
      ),
    );
  }
}

class MyDrawerTile extends StatelessWidget {
  const MyDrawerTile({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });

  final String title;
  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
      leading: Icon(icon, size: 29, color: whiteColor),
      title: Text(
        title,
        style: TextStyle(fontSize: 19, color: whiteColor),
      ),
      trailing: Icon(Icons.arrow_forward_ios, size: 17, color: whiteColor),
      onTap: onTap ??
          () {
            Navigator.pop(context);
          },
    );
  }
}
