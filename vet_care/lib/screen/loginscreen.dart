import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              width: 400,
              height: 800,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(0, 183, 171, 159),
                    Color.fromARGB(100, 183, 171, 159),
                    Color.fromARGB(255, 183, 171, 159)
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 150,
            bottom: 150,
            left: 38,
            right: 38,
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/logo.png"),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Animal Care Clinic',
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'คลีนิครักษาสัตว์',
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w100),
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(),
                  Row(),
                  Row(),
                  Row(),
                  Row(),
                  Row()
                ],
              ),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              width: 324,
              height: 460,
            ),
          ),
        ],
      ),
    );
  }
}
