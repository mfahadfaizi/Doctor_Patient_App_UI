import 'package:doctor_app/Global/global.dart';
import 'package:flutter/material.dart';
import 'my_button.dart';

class RequestDetailDialog extends StatelessWidget {
  const RequestDetailDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      insetPadding: const EdgeInsets.all(10.5),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  maxRadius: 35,
                  minRadius: 20,
                  backgroundImage: AssetImage('assets/profile.png'),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jane Cooper',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: blackColor,
                          fontSize: 18),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Age: 52',
                      style: TextStyle(color: mainThemeColor, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              'Appointment Detail:',
              style: TextStyle(
                  color: blackColor, fontWeight: FontWeight.bold, fontSize: 17),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                SizedBox(
                  width: 165,
                  child: Text(
                    'Date',
                    style: TextStyle(color: mainThemeColor),
                  ),
                ),
                Text(
                  'Monday Dec 14, 2023',
                  style: TextStyle(color: textLightColor),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                SizedBox(
                  width: 165,
                  child: Text(
                    'Time',
                    style: TextStyle(color: mainThemeColor),
                  ),
                ),
                Text(
                  '08am - 10am',
                  style: TextStyle(color: textLightColor),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                SizedBox(
                  width: 165,
                  child: Text(
                    'Gender',
                    style: TextStyle(color: mainThemeColor),
                  ),
                ),
                Text(
                  'Male',
                  style: TextStyle(color: textLightColor),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                SizedBox(
                  width: 165,
                  child: Text(
                    'Patient number',
                    style: TextStyle(color: mainThemeColor),
                  ),
                ),
                Text(
                  '31585123',
                  style: TextStyle(color: textLightColor),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Docmentation',
              style: TextStyle(
                  color: blackColor, fontWeight: FontWeight.bold, fontSize: 17),
            ),
            const SizedBox(height: 20),
            Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(color: textLightColor),
              ),
              child: ListTile(
                leading: Icon(
                  Icons.description,
                  color: textLightColor,
                ),
                title: Text(
                  'Medical check_up.pdf',
                  style: TextStyle(color: textLightColor),
                ),
                trailing: Icon(
                  Icons.download,
                  color: textLightColor,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: mainThemeColor.withOpacity(0.15),
                      ),
                      child: Center(
                        child: Text(
                          'Decline',
                          style: TextStyle(
                              color: mainThemeColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 2,
                  child: MyButton(
                    title: 'Accept Appointment',
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
