import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vet_care/component/pet_history.dart';
import 'package:vet_care/widgets/background_widget.dart';
import 'package:vet_care/widgets/colorbrowshade_widget.dart';

class PedHistoryScreen extends StatefulWidget {
  const PedHistoryScreen({super.key, required this.id});

  final String id;

  @override
  State<PedHistoryScreen> createState() => _PedHistoryScreenState();
}

class _PedHistoryScreenState extends State<PedHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'ประวัติการรักษา',
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
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 50),
              child: PetHistory(
                id: widget.id,
              ),
            ),
          )
        ],
      ),
    );
  }
}
