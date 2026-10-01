import 'package:flutter/material.dart';

class Expandedwidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          color: Colors.amber,
        ),
        Expanded(
          child: Container(
            height: 50,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}