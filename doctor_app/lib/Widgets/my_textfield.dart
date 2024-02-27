import 'package:flutter/material.dart';
import 'package:doctor_app/Global/global.dart';

// ignore: must_be_immutable
class MyTextField extends StatelessWidget {
  MyTextField(
      {Key? key,
      required this.hintText,
      this.maxLength,
      this.isObscure = false,
      this.readOnly = false,
      this.keyboardType,
      this.onChanged,
      this.controller,
      this.trailing,
      this.leading,
      this.defaultValue,
      this.title,
      this.maxLines = 1})
      : super(key: key);

  final String hintText;
  bool isObscure = false;
  bool readOnly = false;
  final int? maxLength;
  final Widget? trailing;
  final Widget? leading;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final String? defaultValue;
  final String? title;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title ?? '',
          ),
          SizedBox(height: title == null ? 0.0 : 5),
          TextFormField(
            initialValue: defaultValue,
            controller: controller,
            readOnly: readOnly,
            obscureText: isObscure,
            keyboardType: keyboardType,
            onChanged: onChanged,
            maxLength: maxLength,
            maxLines: maxLines,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              fillColor: whiteColor,
              filled: true,
              contentPadding: const EdgeInsets.all(15.0),
              suffixIcon: trailing,
              prefixIcon: leading,
              counterText: '',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                    color: textLightColor.withOpacity(0.5), width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: textLightColor.withOpacity(0.5), width: 2),
                borderRadius: BorderRadius.circular(10.0),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                    color: textLightColor.withOpacity(0.5), width: 2),
                borderRadius: BorderRadius.circular(10.0),
              ),
              hintStyle: TextStyle(color: textLightColor.withOpacity(0.7)),
              hintText: hintText,
            ),
          ),
        ],
      ),
    );
  }
}
