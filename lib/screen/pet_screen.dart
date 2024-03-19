import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vet_care/screen/pet_profile_screen.dart';
import 'package:vet_care/widgets/background_widget.dart';
import 'package:vet_care/widgets/colorbrowshade_widget.dart';
import 'package:vet_care/widgets/logo_widget.dart';
import 'package:http/http.dart' as http;

class PetScreen extends StatefulWidget {
  const PetScreen({Key? key}) : super(key: key);

  @override
  State<PetScreen> createState() => _PetScreenState();
}

class _PetScreenState extends State<PetScreen> {
  List pet = [];

  Future<void> getRecord() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? name = prefs.getString('firstname');
    String uri = "http://10.0.2.2/php_api/view_pet.php?owner_name=$name";
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
        builder: (context) => PetProfileScreen(
          id: petId,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          background(),
          ColorBrowShade(),
          logo_widget(),
          Positioned(
            top: 230,
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
