import 'package:flutter/material.dart';
import 'package:patient_app/Auth/forget_password.dart';
import 'package:patient_app/Auth/sign_up.dart';
import 'package:patient_app/Global/global.dart';
import 'package:patient_app/Screens/Bottom_Nav_Bar/my_bottom_bar.dart';
import 'package:patient_app/Widgets/my_button.dart';
import 'package:patient_app/Widgets/my_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPassword = false;
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
              children: [
                SizedBox(height: size.height * 0.2),
                const Text(
                  'Welcome Back',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: size.height * 0.02),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                      'You can search course, apply course and find scholarship for abroad studies',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: textLightColor, fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: size.height * 0.03),
                MyTextField(
                  hintText: 'Enter email',
                  keyboardType: TextInputType.emailAddress,
                ),
                MyTextField(
                  hintText: 'Enter password',
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
                SizedBox(height: size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgotPassword()));
                      },
                      child: Text(
                        'Forgot password',
                        style: TextStyle(
                            color: mainThemeColor, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                SizedBox(height: size.height * 0.03),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                  child: MyButton(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyBottomBar()));
                    },
                    title: 'Login',
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Text(
                  'OR',
                  style: TextStyle(
                      color: textLightColor, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: size.height * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                  child: MyButton(
                    titleColor: textLightColor,
                    title: 'Google',
                    onTap: () {},
                    icon: 'assets/googlelogo.png',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: const Alignment(6, 5),
            colors: <Color>[
              whiteColor,
              mainThemeColor,
            ],
            tileMode: TileMode.mirror,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? ",
                    style: TextStyle(color: mainThemeColor, fontSize: 15)),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUp()));
                  },
                  child: Text(
                    'Join us',
                    style: TextStyle(
                        color: mainThemeColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
