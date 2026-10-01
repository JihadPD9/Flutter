import 'package:flutter/material.dart';

class Latihan3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Container(
            height: 75,
            alignment: Alignment.center,
            color: Colors.amber,
            child: Text("Pemasukan"),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Container(
            height: 75,
            alignment: Alignment.center,
            color: Colors.blue,
            child: Text("Pengeluaran")
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Container(
            height: 75,
            alignment: Alignment.center,
            color: Colors.red,
            child: Text("Saldo")
            ),
          ),
        ],
      ),
    );
  }
}