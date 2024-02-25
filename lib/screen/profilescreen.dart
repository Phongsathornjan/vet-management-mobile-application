import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vet_care/widgets/background_widget.dart';
import 'package:vet_care/widgets/colorbrowshade_widget.dart';
import 'package:vet_care/widgets/logo_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          background(),
          ColorBrowShade(),
          logo_widget(),
          Positioned(
            top: 268,
            left: 64,
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              width: 265,
              height: 379,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 42),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/person2.png',
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
                              'ชื่อ - นามสกุล',
                              style: GoogleFonts.notoSansThai(
                                  textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            Text(
                              'นาย กขคง ยืนงง',
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
                          'assets/images/calendar2.png',
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
                              '5 พฤษภาคม 2565',
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
                          'assets/images/email.png',
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
                              'อีเมล',
                              style: GoogleFonts.notoSansThai(
                                  textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            Text(
                              'acbde@gmail.com',
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
                          'assets/images/phone.png',
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
                              'เบอร์โทรศัพทร์',
                              style: GoogleFonts.notoSansThai(
                                  textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              '099-999-999',
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
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 220,
            left: 132,
            child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(85, 0, 0, 0),
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                width: 128,
                height: 128,
                child: const CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/Profilescreen.png'),
                  radius: 55.0,
                )),
          )
        ],
      ),
    );
  }
}
