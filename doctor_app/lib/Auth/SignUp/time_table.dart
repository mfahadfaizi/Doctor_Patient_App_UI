import 'package:doctor_app/Global/global.dart';
import 'package:doctor_app/Widgets/my_appbar.dart';
import 'package:doctor_app/Widgets/my_body.dart';
import 'package:doctor_app/Widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeTable extends StatefulWidget {
  const TimeTable({super.key});

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBody(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const MyAppBar(label: ''),
            Text(
              'INSTANT TIMETABLE',
              style: TextStyle(color: mainThemeColor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Immediate Service Charges ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Container(
                  height: 60,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  child: Center(
                    child: SizedBox(
                      width: 80,
                      child: Row(
                        children: [
                          const Text(
                            '\$',
                            style: TextStyle(fontSize: 18),
                          ),
                          const SizedBox(width: 5),
                          Expanded(
                            child: TextFormField(
                              decoration:
                                  const InputDecoration(hintText: '0.00'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.bottomRight,
              child: MyIconButton(
                onPressed: () {
                  setState(() {
                    timeSlot++;
                  });
                },
                label: 'ADD NEW SLOT',
              ),
            ),
            Expanded(
                child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1.8,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                crossAxisCount: 4,
              ),
              itemCount: timeSlot,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  child: Center(
                    child: Text(DateFormat.jm().format(DateTime.now())),
                  ),
                );
              },
            )),
            MyButton(
              title: 'Save',
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 10)
          ],
        ),
      ),
    );
  }

  int timeSlot = 1;
}

class MyIconButton extends StatelessWidget {
  const MyIconButton({
    super.key,
    this.onPressed,
    required this.label,
  });

  final void Function()? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          foregroundColor: whiteColor,
          backgroundColor: const Color(0xFF0EBE7F),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          )),
      onPressed: onPressed ?? () {},
      icon: const Icon(Icons.add),
      label: Text(label),
    );
  }
}
