import 'package:doctor_app/Auth/SignUp/edit_profile.dart';
import 'package:doctor_app/Auth/SignUp/my_acheivement.dart';
import 'package:doctor_app/Auth/SignUp/time_table.dart';
import 'package:doctor_app/Widgets/my_body.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/Global/global.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  bool showPassword = false;
  bool policyCheck = false;

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: MyBody(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            //Custom app bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 8.0, left: 11.0, bottom: 8.0, right: 5.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: whiteColor),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 18,
                      color: textLightColor,
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'Status: ',
                    style: TextStyle(color: blackColor),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'User review',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),
            const Text(
              'Complete Profile',
              style: TextStyle(fontSize: 20),
            ),
            const Divider(),
            const Text(
                "Kindly, complete your profile so we can verify your account. Field marked with (*) are required. Non required section/ field can be left for now"),

            const SizedBox(height: 20),

            SignUpListTile(
              trailign: const Icon(Icons.arrow_forward_ios),
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/add_profile.png'),
              ),
              title: 'Edit Profile*',
              subtitle:
                  'Edit information about your general and medical profile',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (c) => const EditProfile()));
              },
            ),
            SignUpListTile(
              trailign: const Icon(Icons.arrow_forward_ios),
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/add_time.png'),
              ),
              title: 'My Timetable*',
              subtitle: 'Edit your services timings',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const TimeTable()));
              },
            ),
            SignUpListTile(
              trailign: const Icon(Icons.arrow_forward_ios),
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/add_acheivement.png'),
              ),
              title: 'My Acheivement',
              subtitle: 'Edit information about your acheivment',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyAcheivement()));
              },
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.info,
                    color: mainThemeColor,
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    child: Text(
                      'We will contact you soon after verifying your provided information to activate your account. Thank you! for your patience. ',
                      style: TextStyle(color: textLightColor),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SignUpListTile extends StatelessWidget {
  const SignUpListTile({
    super.key,
    this.title,
    this.subtitle,
    this.leading,
    this.trailign,
    this.onTap,
  });

  final String? title;
  final String? subtitle;
  final Widget? leading;
  final Widget? trailign;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(
        title ?? '',
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle ?? ''),
      trailing: trailign,
      onTap: onTap,
    );
  }
}
