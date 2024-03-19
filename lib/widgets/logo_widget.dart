import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class logo_widget extends StatelessWidget {
  const logo_widget({
    super.key,
    required this.i,
  });

  final double i;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: i,
      left: 38,
      right: 38,
      child: Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(120, 255, 255, 255),
            borderRadius: BorderRadius.all(Radius.circular(90))),
        width: 333,
        height: 99,
        child: Row(
          children: [
            Image.asset("assets/images/logo.png"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Text(
                'Animal Care Clinic',
                style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w400),
                    color: const Color.fromARGB(255, 0, 0, 0)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
