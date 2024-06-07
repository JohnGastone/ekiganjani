// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class OurCoursesScreen extends StatefulWidget {
  const OurCoursesScreen({super.key});

  @override
  State<OurCoursesScreen> createState() => _OurCoursesScreenState();
}

class _OurCoursesScreenState extends State<OurCoursesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
