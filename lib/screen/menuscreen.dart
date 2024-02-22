import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vet_care/widgets/background_widget.dart';
import 'package:vet_care/widgets/colorbrowshade_widget.dart';
import 'package:vet_care/widgets/logo_widget.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const background(),
          const ColorBrowShade(),
          logo_widget(),
          Positioned(
            left: 50,
            top: 260,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
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
                    const SizedBox(
                      width: 60,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
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
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      width: 105,
                      height: 105,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/calendar.png',
                              width: 64,
                              height: 64,
                            ),
                            Text(
                              'ตรวจสอบคิว',
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
                    const SizedBox(
                      width: 60,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      width: 105,
                      height: 105,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/payment.png',
                              width: 64,
                              height: 64,
                            ),
                            Text(
                              'การชำระเงิน',
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
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      width: 300,
                      height: 105,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
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
                              children: [
                                Text(
                                  'ตารางนัดหมาย',
                                  style: GoogleFonts.notoSansThai(
                                      textStyle: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                      color:
                                          const Color.fromARGB(255, 0, 0, 0)),
                                ),
                                Text(
                                  'ฉีดยาโรคพิษสุนัขบ้า',
                                  style: GoogleFonts.notoSansThai(
                                      textStyle: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400),
                                      color:
                                          const Color.fromARGB(179, 0, 0, 0)),
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(100, 183, 171, 159),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
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
                                        '12 ก.พ. 2567 14:00 น.',
                                        style: GoogleFonts.notoSansThai(
                                            textStyle: const TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400),
                                            color: const Color.fromARGB(
                                                179, 0, 0, 0)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
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
