import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vet_care/screen/pet_history_screen.dart';
import 'package:vet_care/widgets/background_widget.dart';
import 'package:vet_care/widgets/colorbrowshade_widget.dart';
import 'package:vet_care/widgets/logo_widget.dart';
import 'package:http/http.dart' as http;

class PetProfileScreen extends StatefulWidget {
  const PetProfileScreen({super.key, required this.id});

  final String id;

  @override
  State<PetProfileScreen> createState() => _PetProfileScreenState();
}

class _PetProfileScreenState extends State<PetProfileScreen> {
  List pet = [];

  Future<void> getRecord() async {
    print(widget.id);
    String uri =
        "https://setest123.000webhostapp.com/php_api/view_eachpet_data.php?idpet=${widget.id}";
    try {
      var response = await http.get(Uri.parse(uri));
      setState(() {
        pet = jsonDecode(response.body);
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    getRecord();
  }

  onTapFunction() async {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PedHistoryScreen(
                  id: widget.id,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'ข้อมูลสัตว์เลี้ยง',
            style: GoogleFonts.notoSansThai(
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                color: const Color.fromARGB(255, 0, 0, 0)),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Stack(
        children: [
          background(),
          ColorBrowShade(),
          logo_widget(
            i: 30,
          ),
          Positioned(
            top: 150,
            left: 64,
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              width: 265,
              height: 400,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 51),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/cat2.png',
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment:
                              MainAxisAlignment.start, // แก้ไขตรงนี้
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ชื่อ',
                              style: GoogleFonts.notoSansThai(
                                  textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            Text(
                              pet.isNotEmpty
                                  ? pet[0]['pet_name']
                                  : 'Loading...',
                              style: GoogleFonts.notoSansThai(
                                  textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                  color: Color.fromARGB(255, 90, 90, 90)),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/cat3.png',
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment:
                              MainAxisAlignment.start, // แก้ไขตรงนี้
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'วัน / เดือน / ปีเกิด',
                              style: GoogleFonts.notoSansThai(
                                  textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            Text(
                              pet.isNotEmpty
                                  ? pet[0]['birthdate']
                                  : 'Loading...',
                              style: GoogleFonts.notoSansThai(
                                  textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                  color: Color.fromARGB(255, 90, 90, 90)),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/book.png',
                          width: 31,
                          height: 31,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment:
                              MainAxisAlignment.start, // แก้ไขตรงนี้
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ประเภท',
                              style: GoogleFonts.notoSansThai(
                                  textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            Text(
                              pet.isNotEmpty ? pet[0]['species'] : 'Loading...',
                              style: GoogleFonts.notoSansThai(
                                  textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                  color: Color.fromARGB(255, 90, 90, 90)),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/menu1.png',
                          width: 32,
                          height: 32,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment:
                              MainAxisAlignment.start, // แก้ไขตรงนี้
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'สายพันธุ์',
                              style: GoogleFonts.notoSansThai(
                                  textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              pet.isNotEmpty ? pet[0]['breed'] : 'Loading...',
                              style: GoogleFonts.notoSansThai(
                                  textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                  color: Color.fromARGB(255, 90, 90, 90)),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/weight.png',
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment:
                              MainAxisAlignment.start, // แก้ไขตรงนี้
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'น้ำหนัก',
                              style: GoogleFonts.notoSansThai(
                                  textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            Text(
                              pet.isNotEmpty ? pet[0]['weight'] : 'Loading...',
                              style: GoogleFonts.notoSansThai(
                                  textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                  color: Color.fromARGB(255, 90, 90, 90)),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        onTapFunction();
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(157, 219, 168, 72),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/medicine.png',
                              width: 30,
                              height: 30,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment:
                                  MainAxisAlignment.start, // แก้ไขตรงนี้
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'ประวัติการรักษา',
                                  style: GoogleFonts.notoSansThai(
                                      textStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                      color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
