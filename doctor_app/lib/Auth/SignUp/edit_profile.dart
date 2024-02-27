import 'package:doctor_app/Global/global.dart';
import 'package:doctor_app/Widgets/my_appbar.dart';
import 'package:doctor_app/Widgets/my_body.dart';
import 'package:doctor_app/Widgets/my_button.dart';
import 'package:doctor_app/Widgets/my_textfield.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  List<String> gender = ["Male", "Female"];
  final nameController = TextEditingController();
  // final nameController = TextEditingController();
  // final nameController = TextEditingController();
  // final nameController = TextEditingController();
  // final nameController = TextEditingController();
  // final nameController = TextEditingController();
  // final nameController = TextEditingController();
  // final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyBody(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const MyAppBar(label: ''),
              //Image Picker Custom
              Center(
                child: Stack(
                  children: [
                    const CircleAvatar(
                      maxRadius: 50,
                      minRadius: 40,
                      backgroundImage: AssetImage('assets/doctor2.png'),
                    ),
                    Positioned(
                      bottom: -10,
                      right: -10,
                      child: IconButton(
                          onPressed: () {}, icon: const Icon(Icons.camera_alt)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const CustomDivider(title: 'Basic Info'),
              const SizedBox(height: 10),
              MyTextField(
                title: 'Your Name*',
                controller: nameController,
                hintText: 'Dr. username',
              ),
              MyTextField(
                keyboardType: TextInputType.emailAddress,
                title: 'Email Address*',
                controller: nameController,
                hintText: 'abcd@example.com',
              ),
              const SizedBox(height: 10),
              MyTextField(
                title: 'Year of Experience*',
                controller: nameController,
                hintText: 'Year of Experience',
              ),
              const SizedBox(height: 10),
              Text(
                'Your Gender*',
                style: TextStyle(color: textLightColor),
              ),
              const SizedBox(height: 5),
              //Dropdown
              Container(
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: textLightColor),
                ),
                child: DropdownButton<String>(
                  hint: Text(
                    '   Gender',
                    style: TextStyle(color: textLightColor.withOpacity(0.5)),
                  ),
                  underline: const SizedBox(),
                  isExpanded: true,
                  items: gender
                      .map((e) =>
                          DropdownMenuItem<String>(value: e, child: Text(e)))
                      .toList(),
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(height: 5),
              MyTextField(
                title: 'Your City*',
                controller: nameController,
                hintText: 'City',
              ),
              MyTextField(
                keyboardType: TextInputType.phone,
                title: 'Your Phone*',
                controller: nameController,
                hintText: 'Phone Number',
              ),
              const SizedBox(height: 10),
              const CustomDivider(title: 'Specialization'),
              const SizedBox(height: 10),
              MyTextField(
                keyboardType: TextInputType.phone,
                title: 'Primary*',
                controller: nameController,
                hintText: 'specializtion',
              ),
              MyTextField(
                keyboardType: TextInputType.phone,
                title: 'Secondary*',
                controller: nameController,
                hintText: 'Secondary specializatio',
              ),
              const SizedBox(height: 10),
              const CustomDivider(title: 'Offering'),
              const SizedBox(height: 10),
              MyTextField(
                keyboardType: TextInputType.phone,
                title: 'Services*',
                controller: nameController,
                hintText: 'Services offered',
              ),
              const SizedBox(height: 10),
              const CustomDivider(title: 'Treated'),
              const SizedBox(height: 10),
              MyTextField(
                keyboardType: TextInputType.phone,
                title: 'Condition*',
                controller: nameController,
                hintText: 'Condition Treated',
              ),
              const SizedBox(height: 10),
              const CustomDivider(title: 'Verification'),
              const SizedBox(height: 10),
              MyTextField(
                keyboardType: TextInputType.phone,
                title: 'Registration No.*',
                controller: nameController,
                hintText: 'Enter Here',
              ),
              MyTextField(
                maxLines: 3,
                keyboardType: TextInputType.phone,
                title: 'Professional Statement*',
                controller: nameController,
                hintText: 'Enter Your Description',
              ),
              const SizedBox(height: 20),
              MyButton(
                title: 'Save',
                onTap: () {},
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    this.title,
  });
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1,
          width: MediaQuery.of(context).size.width * 0.3,
          color: textLightColor.withOpacity(0.5),
        ),
        const SizedBox(width: 10),
        Text(title ?? ''),
        const SizedBox(width: 10),
        Container(
          height: 1,
          width: MediaQuery.of(context).size.width * 0.3,
          color: textLightColor.withOpacity(0.5),
        ),
      ],
    );
  }
}
