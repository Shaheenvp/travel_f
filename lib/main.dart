import 'package:flutter/material.dart';
import 'package:travel/attractions.dart';
import 'package:travel/detailpage.dart';
import 'package:travel/history.dart';
import 'package:travel/home.dart';
import 'package:travel/hotels.dart';
import 'package:travel/login.dart';
import 'package:travel/models/attractions.dart';
import 'package:travel/naturecategory.dart';
import 'package:travel/navbar.dart';
import 'package:travel/profile.dart';


void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: nav()
,      debugShowCheckedModeBanner: false,
    );
  }
}

