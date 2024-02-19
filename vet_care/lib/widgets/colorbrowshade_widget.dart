import 'package:flutter/material.dart';

class ColorBrowShade extends StatelessWidget {
  const ColorBrowShade({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        width: 400,
        height: 800,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(0, 183, 171, 159),
              Color.fromARGB(120, 183, 171, 159),
              Color.fromARGB(255, 183, 171, 159)
            ],
          ),
        ),
      ),
    );
  }
}
