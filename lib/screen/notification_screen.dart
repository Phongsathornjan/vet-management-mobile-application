import 'package:flutter/material.dart';
import 'package:vet_care/component/notification.dart';
import 'package:vet_care/widgets/background_widget.dart';
import 'package:vet_care/widgets/colorbrowshade_widget.dart';
import 'package:vet_care/widgets/logo_widget.dart';

class NontificationScreen extends StatelessWidget {
  const NontificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          background(),
          ColorBrowShade(),
          logo_widget(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 230),
            child: Nontification(),
          )
        ],
      ),
    );
  }
}
