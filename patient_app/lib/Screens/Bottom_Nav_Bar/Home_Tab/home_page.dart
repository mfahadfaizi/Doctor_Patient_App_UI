import 'package:flutter/material.dart';
import 'package:patient_app/Global/global.dart';
import 'package:patient_app/Screens/Bottom_Nav_Bar/Home_Tab/doctor_details.dart';
import 'package:patient_app/Screens/Bottom_Nav_Bar/Home_Tab/find_doctors.dart';
import 'package:patient_app/Screens/Drawer/my_drawer.dart';
import 'package:patient_app/Screens/Drawer/profile.dart';
import 'package:patient_app/Widgets/my_textfield.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  List<bool> favoriteStates = List.generate(
      5, (index) => false); // Change the size based on your item count

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        key: scaffoldKey,
        drawer: const MyDrawer(),
        body: Container(
          height: double.infinity,
          width: size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background.png'),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.26,
                child: Stack(
                  children: [
                    Container(
                      height: size.height * 0.20,
                      decoration: BoxDecoration(
                          color: mainThemeColor,
                          borderRadius: const BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                    ),
                    Positioned(
                      top: size.height * 0.07,
                      child: SizedBox(
                        width: size.width,
                        child: ListTile(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10.0),
                          leading: InkWell(
                              onTap: () {
                                scaffoldKey.currentState!.openDrawer();
                              },
                              child: Image.asset(
                                'assets/drawer.png',
                                height: 30,
                                width: 30,
                              )),
                          title: Text(
                            'Hi Handwerker!',
                            style: TextStyle(color: whiteColor),
                          ),
                          subtitle: Text(
                            'Find Your Doctor',
                            style: TextStyle(
                                color: whiteColor,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Profile()));
                            },
                            child: Image.asset(
                              'assets/girl1.png',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        top: size.height * 0.17,
                        left: 0,
                        right: 0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: MyTextField(
                            hintText: 'Search...',
                            leading: Icon(
                              Icons.search,
                              color: textLightColor,
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15.0),
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
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "I'm Looking For",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: size.height * 0.025),
                                  SizedBox(
                                    height: size.height * 0.14,
                                    child: ListView.builder(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 6,
                                        itemBuilder: (context, index) {
                                          return Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10.0),
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  'assets/surgeon.png',
                                                  height: 60,
                                                ),
                                                const SizedBox(height: 10),
                                                Text(
                                                  'Skin Specialist',
                                                  style: TextStyle(
                                                      color: textLightColor,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          );
                                        }),
                                  ),
                                  Center(
                                    child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        height: size.height * 0.05,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            color: Colors.grey.shade100),
                                        child: const Center(
                                          child: Text(
                                            'All Specialization',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ]),
                          ),
                          SizedBox(height: size.height * 0.03),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Popular Doctor',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const FindDoctors()));
                                },
                                child: Row(
                                  children: [
                                    Text('See all',
                                        style:
                                            TextStyle(color: textLightColor)),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: textLightColor,
                                      size: 15,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: size.height * 0.03),
                          SizedBox(
                            height: size.height * 0.33,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const DoctorDetails()));
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.3),
                                              spreadRadius: 0,
                                              blurRadius: 0,
                                              offset: const Offset(0, 1),
                                            ),
                                          ],
                                        ),
                                        child: Card(
                                          color: Colors.white,
                                          elevation: 0,
                                          child: Column(
                                            children: [
                                              Image.asset(
                                                'assets/doctor.png',
                                                width: 190,
                                                height: 170,
                                              ),
                                              SizedBox(
                                                  height: size.height * 0.01),
                                              const Text(
                                                'Dr. Neurologist',
                                                style: TextStyle(fontSize: 18),
                                              ),
                                              SizedBox(
                                                  height: size.height * 0.01),
                                              const Row(
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    size: 20,
                                                    color: Colors.amber,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 20,
                                                    color: Colors.amber,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 20,
                                                    color: Colors.amber,
                                                  ),
                                                  Icon(
                                                    Icons.star_outline,
                                                    size: 20,
                                                    color: Colors.amber,
                                                  ),
                                                  Icon(
                                                    Icons.star_outline,
                                                    size: 20,
                                                    color: Colors.amber,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          ),
                          SizedBox(height: size.height * 0.03),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Feature Doctor',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const FindDoctors()));
                                },
                                child: Row(
                                  children: [
                                    Text('See all',
                                        style:
                                            TextStyle(color: textLightColor)),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: textLightColor,
                                      size: 15,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: size.height * 0.03),
                          SizedBox(
                            height: size.height * 0.27,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const DoctorDetails()));
                                      },
                                      child: Container(
                                        width: size.width * 0.38,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.3),
                                              spreadRadius: 0,
                                              blurRadius: 0,
                                              offset: const Offset(0, 1),
                                            ),
                                          ],
                                        ),
                                        child: Card(
                                          color: Colors.white,
                                          elevation: 0,
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 12.0,
                                                    left: 15.0,
                                                    right: 15.0,
                                                    bottom: 5),
                                                child: Row(
                                                  children: [
                                                    InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          favoriteStates[
                                                                  index] =
                                                              !favoriteStates[
                                                                  index];
                                                        });
                                                      },
                                                      child: favoriteStates[
                                                              index]
                                                          ? const Icon(
                                                              Icons.favorite,
                                                              color: Colors.red,
                                                            )
                                                          : Icon(
                                                              Icons
                                                                  .favorite_outline,
                                                              color:
                                                                  textLightColor,
                                                            ),
                                                    ),
                                                    const Spacer(),
                                                    const Icon(Icons.star,
                                                        color: Colors.amber),
                                                    const Text(
                                                      '3.7',
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                  height: size.height * 0.01),
                                              const CircleAvatar(
                                                  radius: 45,
                                                  backgroundImage: AssetImage(
                                                      'assets/featuredoctor.png')),
                                              SizedBox(
                                                  height: size.height * 0.01),
                                              const Text(
                                                'Dr. Morgan',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                              SizedBox(
                                                  height: size.height * 0.005),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  const Text('\$',
                                                      style: TextStyle(
                                                          color: Colors.green,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  Text('25.00',
                                                      style: TextStyle(
                                                          color: textLightColor,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          ),
                          SizedBox(height: size.height * 0.05),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ));
  }
}
