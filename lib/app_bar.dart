import 'dart:math';

import 'package:flutter/material.dart';

class title extends StatefulWidget {
  const title({super.key});

  @override
  State<title> createState() => titleState();
}

class titleState extends State<title> {
  final List<String> name = [
    "Breakfast",
    "Lunch",
    "Dinner",
  ];

  void change() {
    setState(() {
      int tmp = Random().nextInt(name.length);
      do {
        tmp = Random().nextInt(name.length);
      } while (tmp == index);
      index = tmp;
    });
  }

  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      name[index],
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 28,
      ),
    );
  }
}

class action extends StatelessWidget {
  const action({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(99),
          border: Border.all(color: Color.fromARGB(255, 171, 187, 171)),
        ),
        child: Icon(
          Icons.share,
        ),
      ),
    );
  }
}

class Leading extends StatelessWidget {
  const Leading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: Transform.translate(
        offset: Offset(15, 0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(99),
            border: Border.all(color: Color.fromARGB(255, 171, 187, 171)),
          ),
          child: Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
    );
  }
}
