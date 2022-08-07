import 'package:flutter/material.dart';

import 'package:flutter_calc/widgets/pad_button.dart';

class NumPad extends StatelessWidget {
  const NumPad({Key? key}) : super(key: key);

  static const List<String> buttons = [
    '7',
    '8',
    '9',
    'DEL',
    '4',
    '5',
    '6',
    '+',
    '1',
    '2',
    '3',
    '-',
    '.',
    '0',
    '/',
    'x',
  ];

  static const List<String> buttons2 = ['RESET', '='];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 10,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0XFF252D44),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                children: buttons.map(
                  (String e) {
                    if (e == 'DEL') {
                      return PadButton(
                        color: const Color(0XFF647299),
                        shadowColor: const Color(0XFF404E75),
                        text: e,
                        textColor: Colors.white,
                      );
                    } else {
                      return PadButton(
                        color: const Color(0XFFEBE3D8),
                        shadowColor: const Color(0XFFB3A195),
                        text: e,
                        textColor: const Color(0XFF252D44),
                      );
                    }
                  },
                ).toList(),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              flex: 1,
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 2,
                children: buttons2.map(
                  (String e) {
                    if (e == 'RESET') {
                      return PadButton(
                        color: const Color(0XFF647299),
                        shadowColor: const Color(0XFF404E75),
                        text: e,
                        textColor: Colors.white,
                      );
                    } else {
                      return PadButton(
                        color: const Color(0XFFCF4032),
                        shadowColor: const Color(0XFF8F2316),
                        text: e,
                        textColor: const Color(0XFF252D44),
                      );
                    }
                  },
                ).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
