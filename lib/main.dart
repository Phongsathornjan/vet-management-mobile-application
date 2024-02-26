import 'package:flutter/material.dart';
import 'package:vet_care/screen/pet_history_screen.dart';
import 'package:vet_care/screen/pet_profile_screen.dart';
import 'package:vet_care/screen/profilescreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PetProfileScreen(),
    );
  }
}
