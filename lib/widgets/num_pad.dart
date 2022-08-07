import 'package:flutter/material.dart';

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
                children: buttons
                    .map((String e) => Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0XFFB3A195),
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(bottom: 6),
                              decoration: BoxDecoration(
                                color: const Color(0XFFEBE3D8),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Center(
                                child: Text(
                                  e,
                                  style: const TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0XFF252D44),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ))
                    .toList(),
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
                children: buttons2
                    .map(
                      (String e) => Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0XFFB3A195),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0XFFEBE3D8),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            margin: const EdgeInsets.only(bottom: 6),
                            child: Center(
                              child: Text(
                                e,
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0XFF252D44),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
