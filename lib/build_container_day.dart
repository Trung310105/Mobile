import 'package:flutter/material.dart';

class BuildContainerDay extends StatefulWidget {
  const BuildContainerDay({
    super.key,
    required this.number,
    required this.day,
  });

  final String number;
  final String day;

  @override
  State<BuildContainerDay> createState() => _BuildContainerDayState();
}

class _BuildContainerDayState extends State<BuildContainerDay> {

  late bool _hasBorder;
  @override
  void initState() {
    super.initState();
    _hasBorder = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5.0),
      width: 70,
      height: 100,
      decoration: BoxDecoration(
        color: _hasBorder ? null : Colors.green.shade200,
        borderRadius: BorderRadius.circular(15),
        border: _hasBorder ? Border.all(color: Colors.grey) : null,
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            _hasBorder = !_hasBorder;
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.number,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
              ),
            ),
            Text(
              widget.day,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
