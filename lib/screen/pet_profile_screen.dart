import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vet_care/widgets/background_widget.dart';
import 'package:vet_care/widgets/colorbrowshade_widget.dart';
import 'package:vet_care/widgets/logo_widget.dart';

class PetProfileScreen extends StatelessWidget {
  const PetProfileScreen({super.key});

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
                padding: const EdgeInsets.symmetric(horizontal: 51),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100,
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
                              'น้องเหมียว',
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
                          'assets/images/age.png',
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
                              'อายุ',
                              style: GoogleFonts.notoSansThai(
                                  textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            Text(
                              '1 ขวบ',
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
                          'assets/images/medicine.png',
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
                              'ประวัติแพ้ยา',
                              style: GoogleFonts.notoSansThai(
                                  textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              'ไม่มี',
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
                padding: EdgeInsets.all(8),
                //decoration: const BoxDecoration(
                //color: Colors.black, shape: BoxShape.circle),
                //child:

                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                //borderRadius: BorderRadius.all(Radius.circular(100))),
                //width: 118,
                //height: 118,
                child: ClipOval(
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(58),
                    child: Image.asset('assets/images/userpet.jpg',
                        fit: BoxFit.cover),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
