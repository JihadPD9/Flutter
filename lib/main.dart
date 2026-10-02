import 'package:flutter/material.dart';
import 'package:flutter_jihad_rpl1/container/ContainerLatihan.dart';
import 'package:flutter_jihad_rpl1/container/ContainerSatu.dart';
import 'package:flutter_jihad_rpl1/latihan/Latihan4.dart';
import 'package:flutter_jihad_rpl1/row_column/ColumnWidget.dart';
import 'package:flutter_jihad_rpl1/row_column/RowColumnWidget.dart';
import 'package:flutter_jihad_rpl1/latihan/Latihan1.dart';
import 'package:flutter_jihad_rpl1/latihan/Latihan2.dart';
import 'package:flutter_jihad_rpl1/row_column/RowWidget.dart';
import 'package:flutter_jihad_rpl1/sized_expanded_stack/ExpandedWidget.dart';
import 'package:flutter_jihad_rpl1/latihan/Latihan3.dart';
import 'package:flutter_jihad_rpl1/sized_expanded_stack/LayoutDua.dart';
import 'package:flutter_jihad_rpl1/sized_expanded_stack/LayoutTiga.dart';
import 'package:flutter_jihad_rpl1/sized_expanded_stack/LayoutSatu.dart';
import 'package:flutter_jihad_rpl1/sized_expanded_stack/SizedBoxWidget.dart';
import 'package:flutter_jihad_rpl1/sized_expanded_stack/StackWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Latihan4(),
      ),
    );
  }
}

class RowWidget {}

class HelloWidget extends StatelessWidget {
  const HelloWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hello Flutter",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.cyan,
        ),
      ),
    );
  }
}
