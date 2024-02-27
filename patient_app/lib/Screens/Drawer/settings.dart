import 'package:flutter/material.dart';
import 'package:patient_app/Global/global.dart';
import 'package:patient_app/Widgets/my_appbar.dart';
import 'package:patient_app/Widgets/my_body.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: MyBody(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const MyAppBar(label: 'Settings'),
          SizedBox(height: size.height * 0.03),
          Text('Account Settings',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: textLightColor)),
          SizedBox(height: size.height * 0.01),
          ListTile(
            leading: const Icon(Icons.lock, color: Colors.red),
            title: Text('Change Password',
                style: TextStyle(color: textLightColor, fontSize: 18)),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: textLightColor,
              size: 18,
            ),
          ),
          const Divider(
            thickness: 0.5,
          ),
          ListTile(
            leading: const Icon(Icons.group, color: Colors.orange),
            title: Text('About us',
                style: TextStyle(color: textLightColor, fontSize: 18)),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: textLightColor,
              size: 18,
            ),
          ),
          const Divider(
            thickness: 0.5,
          ),
        ],
      )),
    );
  }
}
