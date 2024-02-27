import 'package:flutter/material.dart';
import 'package:patient_app/Global/global.dart';
import 'package:patient_app/Screens/Bottom_Nav_Bar/Home_Tab/doctor_details.dart';
import 'package:patient_app/Screens/Bottom_Nav_Bar/my_bottom_bar.dart';
import 'package:patient_app/Widgets/my_appbar.dart';
import 'package:patient_app/Widgets/my_button.dart';

class BookAppointment extends StatefulWidget {
  const BookAppointment({super.key});

  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  DateTime? pickedDate;

  int _selectedDateIndex = -1;
  List<String> appointmentDates = [
    'Tomorrow, 24 Feb',
    'Thu, 25 Feb',
    'Fri, 25 Feb',
    'Sat, 28 Feb'
  ];
  List<String> appointmentSlots = [
    '12 slots available',
    '10 slots available',
    '10 slots available',
    '9 slots available'
  ];
  bool isTimeSelected = false;
  int _selectedTimeIndex = -1;
  List<String> appointmentTime = [
    '1:00 PM',
    '1:30 PM',
    '2:00 PM',
    '2:30 PM',
    '7:00 PM',
    '8:30 PM',
    '9:00 PM',
    '10:30 PM',
    '11:00 PM',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
      height: double.infinity,
      width: size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background.png'), fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const MyAppBar(label: 'Select Time'),
            SizedBox(height: size.height * 0.02),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DoctorDetails()));
              },
              child: Container(
                  padding: const EdgeInsets.all(8.0),
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/doctor2.png',
                        height: 75,
                        width: 75,
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: size.width *
                                0.65, // Take up full available width
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Dr. Jimmy',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Pediatric Dentist',
                            style: TextStyle(color: mainThemeColor),
                          ),
                          const Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 16,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                size: 16,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                size: 16,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star_outline,
                                size: 16,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star_outline,
                                size: 16,
                                color: Colors.amber,
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  )),
            ),
            SizedBox(height: size.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 3.0),
                  child: Text(
                    'Date',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                IconButton(
                    onPressed: () async {
                      pickedDate = await showDatePicker(
                          context: context,
                          initialDate: pickedDate ?? DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime(2050));
                    },
                    icon: Icon(
                      Icons.calendar_month_outlined,
                      color: mainThemeColor,
                    ))
              ],
            ),
            SizedBox(height: size.height * 0.02),
            SizedBox(
              height: size.height * 0.07,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: appointmentDates.length,
                itemBuilder: (context, index) {
                  final isSelected =
                      index == _selectedDateIndex; // Track selected index
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedDateIndex =
                            index; // Update selected index on tap
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      margin: const EdgeInsets.only(right: 12.0),
                      decoration: BoxDecoration(
                          color: isSelected ? mainThemeColor : whiteColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: isSelected
                                  ? whiteColor
                                  : textLightColor.withOpacity(0.2))),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              appointmentDates[index],
                              style: TextStyle(
                                  fontSize: 16,
                                  color:
                                      isSelected ? whiteColor : textLightColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              appointmentSlots[index],
                              style: TextStyle(
                                  fontSize: 12,
                                  color:
                                      isSelected ? whiteColor : textLightColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(0),
                itemCount: appointmentTime.length,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.8,
                ),
                itemBuilder: (context, index) {
                  final isTimeSelected = index == _selectedTimeIndex;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedTimeIndex =
                            index; // Update selected index on tap
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                          color: isTimeSelected
                              ? mainThemeColor
                              : mainThemeColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: isTimeSelected
                                  ? whiteColor
                                  : textLightColor.withOpacity(0.2))),
                      child: Center(
                        child: Text(
                          appointmentTime[index],
                          style: TextStyle(
                              fontSize: 16,
                              color:
                                  isTimeSelected ? whiteColor : mainThemeColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            MyButton(
                title: 'Book Appointment',
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return ThankYouDialog(size: size);
                      });
                }),
            SizedBox(height: size.height * 0.1)
          ],
        ),
      ),
    ));
  }
}

class ThankYouDialog extends StatelessWidget {
  const ThankYouDialog({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Dialog(
        insetPadding: const EdgeInsets.all(15.0),
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/like.png',
                height: 170,
                width: 170,
              ),
              SizedBox(height: size.height * 0.01),
              const Text(
                'Thank You !',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('Your Appointment Successful',
                  style: TextStyle(color: textLightColor, fontSize: 20)),
              SizedBox(height: size.height * 0.03),
              Text(
                'You booked an appointment with Dr. Pediatrician Purpieson on February 21, at 02:00 PM',
                style: TextStyle(color: textLightColor, fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: size.height * 0.03),
              MyButton(
                  title: 'Done',
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyBottomBar()),
                        (route) => false);
                  }),
              SizedBox(height: size.height * 0.01),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Edit your appointment',
                    style: TextStyle(color: textLightColor),
                  ))
            ],
          ),
        ));
  }
}
