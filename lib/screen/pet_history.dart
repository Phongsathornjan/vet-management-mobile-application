import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final List<String> entries = <String>[
  'รับยารักษาไรหู',
  'ตรวจสุขภาพประจำปี',
  'ฉีดวัคซีนโรคหวัดแมว',
];

class PetHistory extends StatelessWidget {
  const PetHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: const BoxDecoration(
              color: Color.fromARGB(183, 255, 255, 255),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          height: 71,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Text(
                  '${entries[index]}',
                  style: GoogleFonts.notoSansThai(
                      textStyle: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w400),
                      color: Color.fromARGB(255, 90, 90, 90)),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(100, 183, 171, 159),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
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
                                fontSize: 13, fontWeight: FontWeight.w400),
                            color: const Color.fromARGB(179, 0, 0, 0)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
