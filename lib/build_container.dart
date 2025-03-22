import 'dart:math';

import 'package:flutter/material.dart';

class BuildContainer extends StatelessWidget {
  const BuildContainer({
    super.key,
    required this.time,
    required this.title,
    required this.desc,
    required this.session,
  });

  final String time;
  final String title;
  final String desc;
  final String session;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                time,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                session,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(width: 30),
          Container(
            width: 10,
            height: 70,
            decoration: BoxDecoration(
              color: Color.fromRGBO(
                Random().nextInt(256),
                Random().nextInt(256),
                Random().nextInt(256),
                0.6,
              ),
            ),
          ),
          SizedBox(width: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                desc,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
