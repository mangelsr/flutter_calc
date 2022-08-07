import 'package:flutter/material.dart';

import 'package:flutter_calc/pages/calc_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Calc',
      home: CalcPage(),
    );
  }
}
