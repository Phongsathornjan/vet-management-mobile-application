import 'package:flutter/material.dart';
import 'package:vet_care/screen/bottom_nav.dart';

// ignore: must_be_immutable
class RountScreen extends StatelessWidget {
  RountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[],
        ),
        bottomNavigationBar: BottomNavBarScreen());
  }
}
