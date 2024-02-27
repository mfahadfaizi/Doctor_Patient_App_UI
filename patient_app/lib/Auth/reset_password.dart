import 'package:flutter/material.dart';
import 'package:patient_app/Auth/login_screen.dart';
import 'package:patient_app/Global/global.dart';
import 'package:patient_app/Widgets/my_appbar.dart';
import 'package:patient_app/Widgets/my_button.dart';
import 'package:patient_app/Widgets/my_textfield.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool showPassword = false;
  bool showConfirmPassword = false;
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const MyAppBar(label: ''),
                SizedBox(height: size.height * 0.18),
                const Center(
                  child: Text(
                    'Reset password',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                      'Set the new password for your account so you can login and access all the features.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: textLightColor, fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: size.height * 0.05),
                MyTextField(
                  hintText: 'New Password',
                  keyboardType: TextInputType.visiblePassword,
                  isObscure: showPassword ? false : true,
                  trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                      icon: showPassword
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility)),
                ),
                MyTextField(
                  hintText: 'Re-enter Password',
                  keyboardType: TextInputType.visiblePassword,
                  isObscure: showConfirmPassword ? false : true,
                  trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          showConfirmPassword = !showConfirmPassword;
                        });
                      },
                      icon: showConfirmPassword
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility)),
                ),
                SizedBox(height: size.height * 0.05),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                  child: MyButton(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                        (route) => false,
                      );
                    },
                    title: 'Continue',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
