// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        title: Padding(
          padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white24,
                child: Icon(CupertinoIcons.person),
              ),
              Text(
                "Our Courses",
                style: GoogleFonts.spaceMono(
                    fontSize: 19,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              CircleAvatar(
                backgroundColor: Colors.white24,
                child: Icon(Icons.search),
              ),
            ],
          ),
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
