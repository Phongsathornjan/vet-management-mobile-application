import 'package:flutter/material.dart';
import 'package:vet_care/widgets/background_widget.dart';
import 'package:vet_care/widgets/colorbrowshade_widget.dart';

class Schedule extends StatelessWidget {
  Schedule({super.key});
  final emailcontroller = TextEditingController();
  final passcontroller = TextEditingController();

  signIn() {}

  queue() {}

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
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Image.asset(
                            "assets/images/book.png",
                            width: 84,
                            height: 84,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      const Column(
                        children: [
                          Row(
                            children: [Text("วัน-เวลาที่นัดหมาย")],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [Text("วันที่ดึงข้อมูล")],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [Text("รายละเอียด")],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [Text("รายการที่จะรับบริการ")],
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
