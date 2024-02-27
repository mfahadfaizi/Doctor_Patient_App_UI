import 'package:doctor_app/Auth/SignUp/edit_profile.dart';
import 'package:doctor_app/Auth/SignUp/time_table.dart';
import 'package:doctor_app/Global/global.dart';
import 'package:doctor_app/Widgets/add_award_form.dart';
import 'package:doctor_app/Widgets/add_education_form.dart';
import 'package:doctor_app/Widgets/my_appbar.dart';
import 'package:doctor_app/Widgets/my_body.dart';
import 'package:flutter/material.dart';

class MyAcheivement extends StatefulWidget {
  const MyAcheivement({super.key});

  @override
  State<MyAcheivement> createState() => _MyAcheivementState();
}

class _MyAcheivementState extends State<MyAcheivement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBody(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const MyAppBar(label: ''),
            const SizedBox(height: 20),
            const Text(
              'Education',
              style: TextStyle(fontSize: 18),
            ),
            MyIconButton(
              label: 'Add Education',
              onPressed: () async {
                List? haha = await showModalBottomSheet<List>(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return const MyEducationForm(
                      mainHeading: 'Add Education',
                    );
                  },
                );

                myPrint(haha);
              },
            ),
            const SizedBox(height: 20),
            const Text(
              'Previous Experience',
              style: TextStyle(fontSize: 18),
            ),
            MyIconButton(
              label: 'Add Experience',
              onPressed: () async {
                List? haha = await showModalBottomSheet<List>(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return const MyEducationForm(
                      mainHeading: 'Add Experience',
                    );
                  },
                );

                myPrint(haha);
              },
            ),
            const SizedBox(height: 20),
            const CustomDivider(title: 'Award'),
            const SizedBox(height: 20),
            MyIconButton(
              label: 'Add Award',
              onPressed: () async {
                List? haha = await showModalBottomSheet<List>(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return const MyAwartForm();
                  },
                );

                myPrint(haha);
              },
            ),
          ],
        ),
      ),
    );
  }
}
