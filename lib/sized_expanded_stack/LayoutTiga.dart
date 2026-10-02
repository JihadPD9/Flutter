import 'package:flutter/material.dart';

class LayoutTiga extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(height: 140, color: Colors.amber),
            Positioned(
              bottom: -30,
              left: 20,
              child: SizedBox(
                width: 80,
                height: 80,
                child: CircleAvatar(backgroundColor: Colors.blue, radius: 36),
              ),
            ),
          ],
        ),
        SizedBox(height: 40),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Muhammad Jihad Putra Drajat"),
                    Text("XII RPPL 1"),
                  ],
                ),
              ),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text("Follow"),
        ),
      ],
    );
  }
}