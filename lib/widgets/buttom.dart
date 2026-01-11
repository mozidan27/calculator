import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButtom extends StatelessWidget {
  MyButtom(
      {super.key,
      required this.color,
      required this.textColor,
      required this.buttomText,
      this.onTap});

  final Color? color;
  final Color? textColor;
  final String buttomText;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
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
