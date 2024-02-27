import 'package:flutter/material.dart';
import 'package:patient_app/Global/global.dart';
import 'package:patient_app/Widgets/my_appbar.dart';
import 'package:patient_app/Widgets/my_body.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: MyBody(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const MyAppBar(label: 'Help Center'),
          SizedBox(height: size.height * 0.03),
          Text('Doctor Hunt Apps Privacy Policy',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: textLightColor)),
          SizedBox(height: size.height * 0.01),
          Text(
              'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words believable. It is a long established fact that reader will distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a moreIt is a long established fact that reader will distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more',
              style: TextStyle(color: textLightColor)),
          SizedBox(height: size.height * 0.02),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.circle,
                  color: mainThemeColor,
                  size: 16,
                ),
                const SizedBox(width: 10),
                Flexible(
                  child: Text(
                      'The standard chunk of lorem Ipsum used since  1500s is reproduced below for those interested.',
                      style: TextStyle(color: textLightColor)),
                )
              ],
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.circle,
                  color: mainThemeColor,
                  size: 16,
                ),
                const SizedBox(width: 10),
                Flexible(
                  child: Text(
                      'Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum. The point of using.',
                      style: TextStyle(color: textLightColor)),
                )
              ],
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.circle,
                  color: mainThemeColor,
                  size: 16,
                ),
                const SizedBox(width: 10),
                Flexible(
                  child: Text(
                      'The standard chunk of lorem Ipsum used since  1500s is reproduced below for those interested.',
                      style: TextStyle(color: textLightColor)),
                )
              ],
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.circle,
                  color: mainThemeColor,
                  size: 16,
                ),
                const SizedBox(width: 10),
                Flexible(
                  child: Text(
                      'Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum. The point of using.',
                      style: TextStyle(color: textLightColor)),
                )
              ],
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Text(
            'It is a long established fact that reader distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a moreIt is a long established.',
            style: TextStyle(color: textLightColor),
          )
        ],
      )),
    );
  }
}
