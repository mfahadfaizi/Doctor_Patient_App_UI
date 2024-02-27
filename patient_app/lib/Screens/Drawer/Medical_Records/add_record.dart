import 'dart:io';

import 'package:flutter/material.dart';
import 'package:patient_app/Global/global.dart';
import 'package:patient_app/Screens/Drawer/Medical_Records/all_records_list.dart';
import 'package:patient_app/Widgets/my_appbar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:patient_app/Widgets/my_button.dart';

class AddRecord extends StatefulWidget {
  const AddRecord({super.key});

  @override
  State<AddRecord> createState() => _AddRecordState();
}

class _AddRecordState extends State<AddRecord> {
  File? myFile;
  int selectedTypeIndex = -1;

  openGallery() async {
    ImagePicker imagePicker = ImagePicker();
    var pickImage = await imagePicker.pickImage(source: ImageSource.gallery);
    myFile = File(pickImage!.path);
  }

  openCamera() async {
    ImagePicker imagePicker = ImagePicker();
    var pickImage = await imagePicker.pickImage(source: ImageSource.camera);
    myFile = File(pickImage!.path);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background.png'), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: MyAppBar(label: 'Add Records'),
              ),
              SizedBox(height: size.height * 0.03),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        elevation: 0,
                        context: context,
                        builder: (context) {
                          return Container(
                            padding: const EdgeInsets.all(12.0),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Center(
                                  child: Container(
                                    height: 5,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: textLightColor.withOpacity(0.3)),
                                  ),
                                ),
                                SizedBox(height: size.height * 0.03),
                                const Text(
                                  'Add a record',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: size.height * 0.02),
                                GestureDetector(
                                  onTap: () {
                                    openCamera();
                                  },
                                  child: Row(
                                    children: [
                                      Icon(Icons.camera_alt,
                                          color: textLightColor),
                                      SizedBox(width: size.width * 0.02),
                                      Text(
                                        'Take a photo',
                                        style: TextStyle(
                                            color: textLightColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: size.height * 0.02),
                                GestureDetector(
                                  onTap: () {
                                    openGallery();
                                  },
                                  child: Row(
                                    children: [
                                      Icon(Icons.image, color: textLightColor),
                                      SizedBox(width: size.width * 0.02),
                                      Text(
                                        'Upload from gallery',
                                        style: TextStyle(
                                            color: textLightColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: size.height * 0.02),
                                GestureDetector(
                                  onTap: () {},
                                  child: Row(
                                    children: [
                                      Icon(Icons.upload_file_rounded,
                                          color: textLightColor),
                                      SizedBox(width: size.width * 0.02),
                                      Text(
                                        'Upload files',
                                        style: TextStyle(
                                            color: textLightColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(height: size.height * 0.03),
                              ],
                            ),
                          );
                        });
                  },
                  child: Container(
                    height: size.height * 0.18,
                    width: size.width * 0.3,
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: mainThemeColor.withOpacity(0.2),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: mainThemeColor,
                          size: 40,
                        ),
                        SizedBox(height: size.height * 0.01),
                        Text(
                          'Add more images',
                          style: TextStyle(
                              color: mainThemeColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(25.0),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Record for',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Name',
                      hintStyle: TextStyle(color: mainThemeColor)),
                ),
                SizedBox(height: size.height * 0.02),
                const Text(
                  'Type of record',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: size.height * 0.01),
                SizedBox(
                  height: size.height * 0.06,
                  child: ListView.builder(
                      padding: const EdgeInsets.all(0.0),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: recordList.length,
                      itemBuilder: (context, index) {
                        final isSelected = index == selectedTypeIndex;
                        return Padding(
                          padding: const EdgeInsets.only(right: 25.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedTypeIndex = index;
                              });
                            },
                            child: Column(
                              children: [
                                Icon(
                                  recordList[index]['icon'],
                                  color: isSelected
                                      ? mainThemeColor
                                      : textLightColor,
                                  size: 30,
                                ),
                                Text(
                                  recordList[index]['text'],
                                  style: TextStyle(
                                      color: isSelected
                                          ? mainThemeColor
                                          : textLightColor),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(height: size.height * 0.01),
                Divider(
                  color: blackColor,
                ),
                SizedBox(height: size.height * 0.01),
                const Text(
                  'Record created on',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                TextField(
                  onTap: () {
                    FocusScope.of(context).unfocus();
                  },
                  decoration: InputDecoration(
                      hintText: '27 Feb, 2021',
                      hintStyle: TextStyle(color: mainThemeColor)),
                ),
                SizedBox(height: size.height * 0.03),
                MyButton(
                    title: 'Upload Record',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AllRecordsList()));
                    }),
                SizedBox(height: size.height * 0.01),
              ],
            )),
      ),
    );
  }

  List recordList = [
    {'icon': Icons.description_outlined, 'text': 'Report'},
    {'icon': Icons.post_add, 'text': 'Prescription'},
    {'icon': Icons.receipt_outlined, 'text': 'Invoice'},
  ];
}
