import 'package:flutter/material.dart';

class MyButtom extends StatelessWidget {
  const MyButtom(
      {super.key,
      this.color,
      this.textColor,
      required this.buttomText,
      this.buttomTapped});

  final color;
  final textColor;
  final String buttomText;
  final buttomTapped;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: buttomTapped,
        child: ClipRRect(
          child: Container(
            decoration: BoxDecoration(shape: BoxShape.circle, color: color),
            child: Center(
              child: Text(
                buttomText,
                style: TextStyle(
                    color: textColor,
                    fontSize: 32,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
