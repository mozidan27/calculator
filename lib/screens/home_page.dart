import 'package:calculator/widgets/buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> buttoms = [
    'AC',
    '+/-',
    '%',
    '/',
    '7',
    '8',
    '9',
    'x',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '0',
    '.',
    'ANS',
    '=',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(child: Container()),
          Expanded(
              flex: 2,
              child: Container(
                  child: GridView.builder(
                itemCount: buttoms.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  if (index == 0 || index == 1 || index == 2) {
                    return MyButtom(
                      buttomText: buttoms[index],
                      color: const Color(0xffA5A5A5),
                      textColor: Colors.black,
                    );
                  } else {
                    return MyButtom(
                      buttomText: buttoms[index],
                      color: isOperator(buttoms[index])
                          ? const Color(0xffFF9F0A)
                          : const Color(0xff333333),
                      textColor: Colors.white,
                    );
                  }
                },
              ))),
        ],
      ),
    );
  }

  bool isOperator(String x) {
    if (x == 'x' || x == '/' || x == '-' || x == '+' || x == '=') {
      return true;
    }
    return false;
  }

  // bool isOperator2(String AC) {
  //   if (AC == 'AC' || AC == '+/-' || AC == '%') {
  //     return true;
  //   }
  //   return false;
  // }
}
