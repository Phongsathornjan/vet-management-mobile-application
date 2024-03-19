import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class PetHistory extends StatefulWidget {
  const PetHistory({super.key, required this.id});

  final String id;

  @override
  State<PetHistory> createState() => _PetHistoryState();
}

class _PetHistoryState extends State<PetHistory> {
  List data = [];

  Future<void> getRecord() async {
    String uri =
        "https://setest123.000webhostapp.com/php_api/view_pet_data.php?idpet=${widget.id}";
    try {
      var response = await http.get(Uri.parse(uri));
      setState(() {
        data = jsonDecode(response.body);
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

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          height: 85,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start, // แก้ไขตรงนี้
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'อาการ : ' + '${data[index]['symptom']}',
                  style: GoogleFonts.notoSansThai(
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w400),
                      color: const Color.fromARGB(179, 0, 0, 0)),
                ),
                Text(
                  'การรักษา : ' + '${data[index]['treatment_history']}',
                  style: GoogleFonts.notoSansThai(
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w400),
                      color: const Color.fromARGB(179, 0, 0, 0)),
                ),
                Text(
                  'วัน/เวลา : ' + '${data[index]['date_of_treatment']}',
                  style: GoogleFonts.notoSansThai(
                      textStyle: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w400),
                      color: Color.fromARGB(179, 82, 82, 82)),
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
