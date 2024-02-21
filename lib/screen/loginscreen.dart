import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vet_care/component/mybutton.dart';
import 'package:vet_care/component/mytextfield.dart';
import 'package:vet_care/screen/menuscreen.dart';
import 'package:vet_care/screen/registerscreen.dart';
import 'package:vet_care/widgets/background_widget.dart';
import 'package:vet_care/widgets/colorbrowshade_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final emailcontroller = TextEditingController();
  final passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          const background(),
          const ColorBrowShade(),
          Positioned(
            top: 150,
            left: 38,
            right: 38,
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              width: 324,
              height: 460,
              child: Form(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/logo.png",
                            height: 80,
                            width: 105,
                          ),
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
                                        color: Color.fromARGB(255, 90, 90, 90)),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MyTextFiled(
                      controller: emailcontroller,
                      hintText: 'Enter your email.',
                      obscureText: false,
                      labelText: 'Email',
                      icon: Icon(Icons.email_outlined),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    MyTextFiled(
                        controller: passcontroller,
                        hintText: 'Enter your password.',
                        obscureText: true,
                        labelText: 'Password',
                        icon: Icon(Icons.lock_outline_rounded)),
                    const SizedBox(
                      height: 25,
                    ),
                    MyButton(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MenuScreen()));
                        },
                        hinText: 'เข้าสู่ระบบ',
                        color: Color.fromARGB(255, 187, 166, 159)),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      ' หรือยังไม่ได้สมัครสมาชิค ',
                      style: GoogleFonts.notoSansThai(
                          textStyle: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                          color: Color.fromARGB(255, 90, 90, 90)),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    MyButton(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterScreen()));
                        },
                        hinText: 'สมัครสมาชิก',
                        color: Color.fromARGB(255, 255, 255, 255)),
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
