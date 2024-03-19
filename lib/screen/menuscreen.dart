import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vet_care/screen/pet_screen.dart';
import 'package:vet_care/screen/pet_screen2.dart';
import 'package:vet_care/widgets/background_widget.dart';
import 'package:vet_care/widgets/colorbrowshade_widget.dart';
import 'package:vet_care/widgets/logo_widget.dart';
import 'package:http/http.dart' as http;

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  List appointment = [];

  Future<void> getRecord() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? name = prefs.getString('firstname');
    String uri =
        "https://setest123.000webhostapp.com/php_api/select_user_appointment.php?name=$name";
    try {
      var response = await http.get(Uri.parse(uri));
      setState(() {
        appointment = jsonDecode(response.body);
      });
    } catch (e) {
      print(e);
    }
    //print(appointment[0]['booking_datetime']);
  }

  @override
  void initState() {
    super.initState();
    getRecord();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const background(),
          const ColorBrowShade(),
          logo_widget(
            i: 100,
          ),
          Positioned(
            left: 50,
            top: 260,
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PetScreen()));
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        width: 105,
                        height: 105,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/menu1.png',
                                width: 64,
                                height: 64,
                              ),
                              Text(
                                'โปรไฟล์สัตว์',
                                style: GoogleFonts.notoSansThai(
                                    textStyle: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                    color: const Color.fromARGB(255, 0, 0, 0)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 85,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PetScreen2()));
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        width: 105,
                        height: 105,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/pethistory.png',
                                width: 64,
                                height: 64,
                              ),
                              Text(
                                'ประวัติการรักษา',
                                style: GoogleFonts.notoSansThai(
                                    textStyle: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400),
                                    color: const Color.fromARGB(255, 0, 0, 0)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 255, 255, 255),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        width: 300,
                        height: 105,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    'assets/images/appointment.png',
                                    width: 64,
                                    height: 64,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'การนัดหมายครั้งถัดไป',
                                    style: GoogleFonts.notoSansThai(
                                        textStyle: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400),
                                        color:
                                            const Color.fromARGB(255, 0, 0, 0)),
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  appointment
                                          .isNotEmpty // เพิ่มเงื่อนไขเช็ค appointment ว่ามีข้อมูลหรือไม่
                                      ? Container(
                                          decoration: const BoxDecoration(
                                              color: Color.fromARGB(
                                                  100, 183, 171, 159),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8))),
                                          width: 175,
                                          height: 30,
                                          child: Row(
                                            children: [
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              const Icon(Icons.timer_outlined),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                appointment[0]
                                                    ['booking_datetime'],
                                                style: GoogleFonts.notoSansThai(
                                                    textStyle: const TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                    color: const Color.fromARGB(
                                                        179, 0, 0, 0)),
                                              ),
                                            ],
                                          ),
                                        )
                                      : Container(
                                          decoration: const BoxDecoration(
                                              color: Color.fromARGB(
                                                  100, 183, 171, 159),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8))),
                                          width: 175,
                                          height: 30,
                                          child: const Center(
                                            child: Text(
                                              'Loading...',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
