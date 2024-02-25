import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final List<String> topic = <String>[
  'แจ้งเตือนนัด',
  'แจ้งเตือนนัด',
  'แจ้งเตือนนัด',
];

final List<String> detail = <String>[
  'นัดฮีดวัคซีนวันที่ 12 ก.พ. 2567 14:00 น.',
  'นัดทำหมันวันที่ 10 ก.พ. 2567 10:00 น.',
  'นัดตรวจสุขภาพวันที่ 9 ก.พ. 2567 19:00 น.',
];

class Nontification extends StatelessWidget {
  const Nontification({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      itemCount: topic.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          height: 70,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/nontification.png',
                      width: 48,
                      height: 48,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start, // แก้ไขตรงนี้
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '${topic[index]}',
                          style: GoogleFonts.notoSansThai(
                              textStyle: const TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                              color: Color.fromARGB(255, 90, 90, 90)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '${detail[index]}',
                          style: GoogleFonts.notoSansThai(
                              textStyle: const TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                              color: const Color.fromARGB(179, 0, 0, 0)),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
