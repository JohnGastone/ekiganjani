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
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.blueGrey,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Text(
                            "Ongoing",
                            style: GoogleFonts.spaceMono(
                                fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Text(
                            "Complete",
                            style: GoogleFonts.spaceMono(
                                fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
