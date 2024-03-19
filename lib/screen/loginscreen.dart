import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vet_care/component/mybutton.dart';
import 'package:vet_care/component/mytextfield.dart';
import 'package:vet_care/screen/registerscreen.dart';
import 'package:vet_care/screen/rountscreen.dart';
import 'package:vet_care/widgets/background_widget.dart';
import 'package:vet_care/widgets/colorbrowshade_widget.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernamecontroller = TextEditingController();
  final passcontroller = TextEditingController();

  Future login() async {
    try {
      String uri = 'http://10.0.2.2/php_api/verify.php';
      var res = await http.post(Uri.parse(uri), body: {
        "username": usernamecontroller.text,
        "password": passcontroller.text,
      });

      var response = jsonDecode(res.body);
      if (response["status"] == "success") {
        if (response["role"] == "member") {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => RountScreen()));
          saveUserData(response["id"], response["firstname"],
              response["lastname"], response["username"], response["phone"]);
        } else {
          _showMyDialog('รหัสผ่านไม่ถูกต้อง');
        }
      } else if (response["status"] == "no_match_pass") {
        _showMyDialog(response['message']);
        print(response['message']);
      } else if (response["status"] == "no_username") {
        _showMyDialog(response['message']);
        print(response['message']);
      } else if (response["status"] == "fill_in_blank") {
        _showMyDialog(response['message']);
        print(response['message']);
      }
    } catch (e) {
      print(e);
    }
  }

  void saveUserData(String id, String firstname, String lastname,
      String username, String phone) async {
    SharedPreferences.getInstance().then(
      (prefs) {
        prefs.setString('id', id);
        prefs.setString('firstname', firstname);
        prefs.setString('lastname', lastname);
        prefs.setString('username', username);
        prefs.setString('phone', phone);
      },
    );
  }

  void _showMyDialog(String txtMsg) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
              child: AlertDialog(
            backgroundColor: Color.fromARGB(255, 228, 180, 118),
            title: const Text('status'),
            content: Text(txtMsg),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ));
        });
  }

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
                      controller: usernamecontroller,
                      hintText: 'Enter your username.',
                      obscureText: false,
                      labelText: 'username',
                      icon: Icon(Icons.person),
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
                          login();
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
