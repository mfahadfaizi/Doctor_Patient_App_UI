import 'package:doctor_app/Global/global.dart';
import 'package:doctor_app/Widgets/my_button.dart';
import 'package:doctor_app/Widgets/my_textfield.dart';
import 'package:flutter/material.dart';

class MyAwartForm<List> extends StatefulWidget {
  const MyAwartForm({super.key});

  @override
  State<MyAwartForm> createState() => _MyAwartFormState();
}

class _MyAwartFormState extends State<MyAwartForm> {
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, myState) {
        return BottomSheet(
          enableDrag: false,
          onClosing: () => Navigator.pop(context),
          builder: (context) {
            return SizedBox(
              height: 350,
              child: SingleChildScrollView(
                child: Form(
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 15.0,
                        left: 15.0,
                        right: 15.0,
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            Icons.arrow_back_ios,
                            color: mainThemeColor,
                          ),
                          title: Text(
                            'Add Award',
                            style: TextStyle(color: mainThemeColor),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        MyTextField(
                          hintText: 'MBBS',
                          title: 'Award Name',
                        ),
                        MyTextField(
                          hintText: '2xxx',
                          title: 'Year Recevied',
                        ),
                        const SizedBox(height: 10),
                        MyButton(
                          title: 'ADD',
                          onTap: () {
                            Navigator.pop(context, myList);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  List myList = ["AWARD"];
}
