import 'package:flutter/material.dart';
import 'package:vet_care/screen/loginscreen.dart';
import 'package:vet_care/screen/schedulescreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Schedule(),
    );
  }
}
