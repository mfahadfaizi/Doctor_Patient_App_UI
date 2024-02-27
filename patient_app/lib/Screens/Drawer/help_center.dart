import 'package:flutter/material.dart';
import 'package:patient_app/Global/global.dart';
import 'package:patient_app/Widgets/my_appbar.dart';
import 'package:patient_app/Widgets/my_body.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({super.key});

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: MyBody(
          child: Column(
        children: [
          const SizedBox(height: 20),
          const MyAppBar(label: 'Help Center'),
          SizedBox(height: size.height * 0.02),
          Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.all(0),
                  shrinkWrap: true,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: ListTile(
                        title: Text(
                          'Example Help',
                          style: TextStyle(color: textLightColor, fontSize: 18),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: textLightColor,
                        ),
                      ),
                    );
                  }))
        ],
      )),
    );
  }
}
