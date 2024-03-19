import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vet_care/screen/pet_history_screen.dart';
import 'package:vet_care/widgets/background_widget.dart';
import 'package:vet_care/widgets/colorbrowshade_widget.dart';
import 'package:vet_care/widgets/logo_widget.dart';
import 'package:http/http.dart' as http;

class PetScreen2 extends StatefulWidget {
  const PetScreen2({Key? key}) : super(key: key);

  @override
  State<PetScreen2> createState() => _PetScreen2State();
}

class _PetScreen2State extends State<PetScreen2> {
  List pet = [];

  Future<void> getRecord() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? name = prefs.getString('firstname');
    String uri =
        "https://setest123.000webhostapp.com/php_api/view_pet.php?owner_name=$name";
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

  void onTapFunction(BuildContext context, String petId) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PedHistoryScreen(id: petId),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'รายชื่อสัตว์เลี้ยง',
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
            left: 30,
            right: 30,
            child: Container(
              width: 300,
              height: 500,
              child: ListView.builder(
                itemCount: pet.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      onTapFunction(context, pet[index]['pet_id']);
                    },
                    child: Card(
                      margin: EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {
                          onTapFunction(context, pet[index]['pet_id']);
                        },
                        child: ListTile(
                          leading: Image.asset(
                            'assets/images/menu1.png', // ตั้งค่ารูปภาพตามที่คุณต้องการ
                            width: 50,
                            height: 50,
                          ),
                          title: Text(
                            'ID : ' +
                                pet[index]['pet_id'] +
                                '\n' +
                                'ชื่อน้อง : ' +
                                pet[index]['pet_name'],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
