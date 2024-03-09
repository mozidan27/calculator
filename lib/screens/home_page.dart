import 'package:calculator/widgets/buttom.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var qustion = '';
  var answer = '';
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
    'DEL',
    '=',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    qustion,
                    style: const TextStyle(color: Colors.white, fontSize: 50),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    answer,
                    style: const TextStyle(color: Colors.white, fontSize: 50),
                  ),
                ),
              ],
            ),
          )),
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
                      buttomTapped: () {
                        setState(
                          () {
                            if (index == 0) {
                              qustion = '';
                            } else if (index == 1) {
                              qustion = '';
                            } else if (index == 2) {
                              qustion = '%';
                            }
                          },
                        );
                      },
                      buttomText: buttoms[index],
                      color: const Color(0xffA5A5A5),
                      textColor: Colors.black,
                    );
                  } else {
                    return MyButtom(
                      buttomTapped: () {
                        setState(
                          () {
                            if (index == 18) {
                              qustion =
                                  qustion.substring(0, qustion.length - 1);
                            } else {
                              qustion += buttoms[index];
                            }
                          },
                        );
                      },
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
