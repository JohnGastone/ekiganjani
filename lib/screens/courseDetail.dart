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
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                  backgroundColor: const Color.fromARGB(60, 214, 209, 209),
                  child: InkWell(
                    child: Icon(
                      Icons.arrow_back,
                      color: Color.fromARGB(255, 28, 39, 81),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
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
                  image: AssetImage("./images/image.png"), fit: BoxFit.cover)),
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
          padding: const EdgeInsets.only(left: 2, right: 2),
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
                        "Session Duration",
                        style: GoogleFonts.spaceMono(
                            fontSize: 15, color: Colors.grey),
                      ),
                      Text(
                        "09:30AM-10:30AM",
                        style: GoogleFonts.spaceMono(
                          fontSize: 15,
                          color: Color.fromARGB(255, 28, 39, 81),
                        ),
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
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
            padding: const EdgeInsets.only(left: 15, right: 2),
            child: Text.rich(TextSpan(children: <TextSpan>[
              TextSpan(
                text:
                    "In this 8-hour project-based course, you will learn how to craft beautful and elegant User interfaces... ",
                style: GoogleFonts.spaceMono(
                  fontSize: 19,
                  color: Colors.grey,
                ),
              ),
              TextSpan(
                  text: " See More",
                  style:
                      GoogleFonts.spaceMono(fontSize: 20, color: Colors.blue))
            ]))),
        SizedBox(
          height: 35,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            children: [
              Text(
                "Introduction",
                style: GoogleFonts.spaceMono(fontSize: 18, color: Colors.grey),
              ),
              SizedBox(
                width: 11,
              ),
              Column(
                children: [
                  Text(
                    "Basic Design",
                    style: GoogleFonts.spaceMono(
                        fontSize: 18,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 3,
                    width: 115,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                  )
                ],
              ),
              SizedBox(
                width: 11,
              ),
              Text("Benefits",
                  style:
                      GoogleFonts.spaceMono(fontSize: 18, color: Colors.grey))
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Card(
            color: Colors.white24,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("./images/image.png"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Definition of Design",
                        style: GoogleFonts.spaceMono(
                            fontSize: 16,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "2:30",
                        style: GoogleFonts.spaceMono(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    ("./images/progress.png"),
                    height: 90,
                    width: 90,
                  )
                ],
              ),
            ))
      ]),
    );
  }
}
