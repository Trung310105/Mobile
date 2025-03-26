import 'package:flutter/material.dart';

class BuildNutrient extends StatelessWidget {
  final String name;
  final int val;
  final int max;
  final Color color;

  const BuildNutrient({
    super.key,
    required this.name,
    required this.val,
    required this.max,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 21,
          ),
        ),
        SizedBox(height: 10),
        Stack(
          children: [
            Container(
              width: 100,
              height: 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.grey[200],
              ),
            ),
            Container(
              width: 100 * (val / max),
              height: 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: color,
              ),
            ),
          ],
        ),
        SizedBox(height: 4),
        Text(
          "${val}/${max}g",
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 16,
          ),
        )
      ],
    );
    ;
  }
}
