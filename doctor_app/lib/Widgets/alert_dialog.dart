import 'package:doctor_app/Global/global.dart';
import 'package:flutter/material.dart';

class MyAlertDialog extends StatelessWidget {
  const MyAlertDialog(
      {super.key, this.title, this.content, this.onAccept, this.onReject});
  final String? title;
  final String? content;
  final void Function()? onAccept;
  final void Function()? onReject;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: whiteColor,
      title: Text('$title'),
      content: Text('$content'),
      actions: [
        TextButton(
          onPressed: onReject ??
              () {
                Navigator.pop(context);
              },
          child: const Text('No'),
        ),
        ElevatedButton(
            onPressed: onAccept ??
                () {
                  Navigator.pop(context);
                },
            child: const Text('Yes'))
      ],
    );
  }
}
