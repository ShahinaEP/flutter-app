import 'package:flutter/material.dart';
import 'package:flutter_larning_project/assignment/assignment_profile.dart';
import 'package:flutter_larning_project/screen/button_show.dart';
import 'package:flutter_larning_project/screen/home_page.dart';
import 'package:flutter_larning_project/screen/login.dart';

import 'assignment/assigment_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
        body: ShowCustomWidget(),
      )

    );
      // ;
  }
}
