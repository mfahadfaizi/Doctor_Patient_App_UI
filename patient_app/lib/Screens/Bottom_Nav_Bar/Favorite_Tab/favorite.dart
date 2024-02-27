import 'package:flutter/material.dart';
import 'package:patient_app/Global/global.dart';
import 'package:patient_app/Widgets/my_body.dart';
import 'package:patient_app/Widgets/my_textfield.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  List<bool> favoriteStates = List.generate(5, (index) => false);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: MyBody(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: size.height * 0.07),
        const Text(
          'Favorite Doctors',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: size.height * 0.02),
        MyTextField(
          hintText: 'Search',
          leading: const Icon(Icons.search),
        ),
        SizedBox(height: size.height * 0.02),
        Expanded(
          child: GridView.builder(
              padding: const EdgeInsets.all(0),
              shrinkWrap: true,
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.85),
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.all(15.0),
                  margin: const EdgeInsets.symmetric(horizontal: 12.0),
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
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  favoriteStates[index] =
                                      !favoriteStates[index];
                                });
                              },
                              child: favoriteStates[index]
                                  ? const Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    )
                                  : Icon(
                                      Icons.favorite_outline,
                                      color: textLightColor,
                                    ),
                            ),
                          ]),
                      Image.asset(
                        'assets/featuredoctor.png',
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(height: size.height * 0.01),
                      const Text(
                        'Dr. Chacha',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text('Pediatrician',
                          style: TextStyle(color: mainThemeColor))
                    ],
                  ),
                );
              }),
        )
      ]),
    ));
  }
}
