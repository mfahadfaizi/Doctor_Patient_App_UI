import 'package:doctor_app/Global/global.dart';
import 'package:doctor_app/Widgets/my_button.dart';
import 'package:doctor_app/Widgets/my_textfield.dart';
import 'package:flutter/material.dart';

class MyEducationForm<List> extends StatefulWidget {
  const MyEducationForm({
    super.key,
    required this.mainHeading,
  });

  final String mainHeading;

  @override
  State<MyEducationForm> createState() => _MyEducationFormState();
}

class _MyEducationFormState extends State<MyEducationForm> {
  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
      builder: (context, myState) {
        return BottomSheet(
          enableDrag: false,
          onClosing: () => Navigator.pop(context),
          builder: (context) {
            return SizedBox(
              height: 650,
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
                            widget.mainHeading,
                            style: TextStyle(color: mainThemeColor),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        MyTextField(
                          hintText: '2xxx',
                          title: 'From (Year)',
                        ),
                        MyTextField(
                          hintText: '2xxx',
                          title: 'To (Year)',
                        ),
                        MyTextField(
                          hintText: 'Doctor',
                          title: 'Title/Position',
                        ),
                        MyTextField(
                          hintText: 'Example Hospital',
                          title: 'Organization/Hospital',
                        ),
                        MyTextField(
                          hintText: 'Country',
                          title: 'Country Name',
                        ),
                        MyTextField(
                          hintText: 'City',
                          title: 'City Name',
                        ),
                        const SizedBox(height: 10),
                        MyButton(
                          title: 'ADD',
                          onTap: () {
                            Navigator.pop(context, myList);
                          },
                        ),
                        const SizedBox(height: 10),
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

  List myList = ["Fahad", "Ahmed", "Qureshi"];
}
