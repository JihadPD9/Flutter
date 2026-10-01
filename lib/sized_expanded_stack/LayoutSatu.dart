import 'package:flutter/material.dart';

class LayoutSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 72,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [BoxShadow(color: Colors.black, blurRadius: 6)],
        ),
        child: Row(
          children: [
            SizedBox(
              width: 60,
              height: 60,
              child: CircleAvatar(
                backgroundColor: Colors.amber,
                backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqgKiTfqpTzpE772yy8kNuTTFAEJEEsj6fm33HPOiPCw&s",
                ),
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Muhammad Jihad Putra Drajat"),
                  SizedBox(height: 4),
                  Text("XII RPPL 1"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
