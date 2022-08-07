import 'package:flutter/material.dart';

import 'package:flutter_calc/widgets/widgets.dart';

class CalcPage extends StatelessWidget {
  const CalcPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF3B4664),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 30,
        ),
        child: Column(
          children: const [
            Header(),
            SizedBox(height: 16),
            ResultBox(),
            SizedBox(height: 16),
            NumPad(),
          ],
        ),
      ),
    );
  }
}
