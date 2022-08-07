import 'package:flutter/material.dart';

class PadButton extends StatelessWidget {
  final Color color;
  final Color shadowColor;
  final String text;
  final Color textColor;

  const PadButton({
    Key? key,
    required this.color,
    required this.shadowColor,
    required this.text,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: shadowColor,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
          margin: const EdgeInsets.only(bottom: 6),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
