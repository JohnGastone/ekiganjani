// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Coursedetails extends StatefulWidget {
  const Coursedetails({super.key});

  @override
  State<Coursedetails> createState() => _CoursedetailsState();
}

class _CoursedetailsState extends State<Coursedetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                CircleAvatar(
                    backgroundColor: const Color.fromARGB(60, 214, 209, 209),
                    child: Icon(
                      Icons.arrow_back,
                      color: Color.fromARGB(255, 28, 39, 81),
                    )),
                Text("Course Details",
                    style: GoogleFonts.spaceMono(
                        fontSize: 30, fontWeight: FontWeight.bold)),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
