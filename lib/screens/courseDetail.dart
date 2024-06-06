// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
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
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 28, 39, 81),
                      )),
                  CircleAvatar(
                      backgroundColor: const Color.fromARGB(60, 214, 209, 209),
                      child: Icon(
                        CupertinoIcons.heart,
                        color: Color.fromARGB(255, 28, 39, 81),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage("./images/image.png"),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "UI/UX Design Course",
              style: GoogleFonts.spaceMono(
                fontSize: 25,
                color: Color.fromARGB(255, 28, 39, 81),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.clock,
                        color: Color.fromARGB(255, 28, 39, 81),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Duration",
                            style: GoogleFonts.spaceMono(
                                fontSize: 15, color: Colors.grey),
                          ),
                          Column(
                            children: [
                              Text(
                                "09:30 AM",
                                style: GoogleFonts.spaceMono(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 28, 39, 81),
                                ),
                              ),
                              Center(
                                child: Text(
                                  "-",
                                  style: GoogleFonts.spaceMono(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 28, 39, 81),
                                  ),
                                ),
                              ),
                              Text(
                                "11:30 AM",
                                style: GoogleFonts.spaceMono(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 28, 39, 81),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.person_2_fill,
                        color: Color.fromARGB(255, 28, 39, 81),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Students Count",
                            style: GoogleFonts.spaceMono(
                                fontSize: 15, color: Colors.grey),
                          ),
                          Text(
                            "250 Students",
                            style: GoogleFonts.spaceMono(
                              fontSize: 15,
                              color: Color.fromARGB(255, 28, 39, 81),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ]),
    );
  }
}
