import 'package:flutter/material.dart';
import 'package:flutter_jihad_rpl1/listView/ArticleListScreen.dart';
import 'package:flutter_jihad_rpl1/pages/form_page.dart';
import 'package:flutter_jihad_rpl1/pages/home_page.dart';
import 'package:flutter_jihad_rpl1/pages/about_page.dart';
import 'package:flutter_jihad_rpl1/latihan/Latihan1.dart';
import 'package:flutter_jihad_rpl1/latihan/Latihan2.dart';
import 'package:flutter_jihad_rpl1/latihan/Latihan3.dart';
import 'package:flutter_jihad_rpl1/latihan/Latihan4.dart';
import 'package:flutter_jihad_rpl1/latihan/Latihan5.dart';

class AppRoutes {
  static const home = '/';
  static const articleListScreen = '/ArticleListScreen';
  static const about = '/about';
  static const latihanSatu = '/latihan-satu';
  static const latihanDua = '/latihan-dua';
  static const latihanTiga = '/latihan-tiga';
  static const latihanEmpat = '/latihan-empat';
  static const latihanLima = '/latihan-lima';
  static const formPage = '/form-page';

  static Map<String, WidgetBuilder> routes = {
    home : (context) => HomePage(),
    articleListScreen: (context) => ArticleListScreen(),
    about: (context) => AboutPage(),
    latihanSatu: (context) => Latihan1(),
    latihanDua: (context) => Latihan2(),
    latihanTiga: (context) => Latihan3(),
    latihanEmpat: (context) => Latihan4(),
    latihanLima: (context) => Latihan5(),
    formPage: (context) => FormPage(),
  };
} 