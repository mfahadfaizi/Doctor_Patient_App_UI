import 'package:doctor_app/Global/global.dart';
import 'package:doctor_app/Widgets/my_appbar.dart';
import 'package:doctor_app/Widgets/my_body.dart';
import 'package:flutter/material.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBody(
          child: Column(
        children: [
          const SizedBox(height: 20),
          const MyAppBar(label: 'Help Center'),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.all(0),
                  shrinkWrap: true,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: ListTile(
                        onTap: () {},
                        title: Text(
                          'Example Help ${index + 1}',
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
