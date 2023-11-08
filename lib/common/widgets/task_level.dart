import 'package:flutter/material.dart';

class TaskLevel extends StatelessWidget {
  final Color color;
  final String title;
  final Color textColor;

  const TaskLevel(
      {super.key,
      required this.color,
      required this.textColor,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        color: color,
      ),
      width: 60,
      height: 35,
      child: Center(
        child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, color: textColor),
        ),
      ),
    );
  }
}
