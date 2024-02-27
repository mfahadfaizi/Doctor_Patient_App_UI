import 'package:doctor_app/Auth/SignUp/status_page.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/Global/global.dart';
import 'package:doctor_app/Widgets/my_button.dart';
import 'package:doctor_app/Widgets/my_textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool showPassword = false;
  bool policyCheck = false;

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
                  'Sign up as Doctor',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: size.height * 0.01),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                      'You can search course, apply course and find scholarship for abroad studies',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: textLightColor, fontWeight: FontWeight.w400)),
                ),
                SizedBox(height: size.height * 0.02),
                MyTextField(
                  hintText: 'Name',
                  keyboardType: TextInputType.name,
                ),
                MyTextField(
                  hintText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                ),
                MyTextField(
                  hintText: 'Password',
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
                SizedBox(height: size.height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                        activeColor: mainThemeColor,
                        value: policyCheck,
                        onChanged: (value) {
                          setState(() {
                            policyCheck = value!;
                          });
                        }),
                    Flexible(
                      child: Text(
                        'I agree with the Terms of Service & Privacy Policy',
                        maxLines: 2,
                        style: TextStyle(
                            color: textLightColor, fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
                SizedBox(height: size.height * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                  child: MyButton(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const StatusScreen()));
                    },
                    title: 'Sign up',
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
                Text("Have an account? ",
                    style: TextStyle(color: mainThemeColor, fontSize: 15)),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Log In',
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
