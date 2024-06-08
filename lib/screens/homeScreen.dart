// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 39, 81),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 28, 39, 81),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 18, 58, 93),
                    child: ClipOval(
                        child: Image.asset(
                      "./images/image.png",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    ))),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Hello, John",
                  style:
                      GoogleFonts.spaceMono(fontSize: 20, color: Colors.white),
                )
              ],
            ),
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 18, 58, 93),
              child: Icon(
                CupertinoIcons.bell,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Find your favourite\nCourse here!",
                style: GoogleFonts.spaceMono(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 320,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(25)),
                child: TextField(
                  style:
                      GoogleFonts.spaceMono(fontSize: 20, color: Colors.white),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon:
                          Icon(CupertinoIcons.search, color: Colors.white),
                      suffixIcon: Icon(
                        CupertinoIcons.mic,
                        color: Colors.white,
                      ),
                      labelText: "Search course",
                      labelStyle: GoogleFonts.spaceMono(
                          fontSize: 17, color: Colors.white)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 150,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Column(
                        children: [
                          Icon(
                            CupertinoIcons.hand_draw,
                            color: Color.fromARGB(255, 18, 58, 93),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Design",
                            style: GoogleFonts.spaceMono(
                              fontSize: 18,
                              color: Color.fromARGB(255, 18, 58, 93),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Column(
                        children: [
                          Icon(
                            CupertinoIcons.rocket_fill,
                            color: Color.fromARGB(255, 18, 58, 93),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Marketing",
                            style: GoogleFonts.spaceMono(
                              fontSize: 18,
                              color: Color.fromARGB(255, 18, 58, 93),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Column(
                        children: [
                          Icon(
                            CupertinoIcons.text_badge_checkmark,
                            color: Color.fromARGB(255, 18, 58, 93),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Editing",
                            style: GoogleFonts.spaceMono(
                              fontSize: 18,
                              color: Color.fromARGB(255, 18, 58, 93),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Trending Courses",
                      style: GoogleFonts.spaceMono(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "See All",
                      style: GoogleFonts.spaceMono(
                          fontSize: 15, color: Colors.grey),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: Container(
                      height: 210,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Container(
                            height: 140,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    topLeft: Radius.circular(20)),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("./images/image.png"))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "UI/UX Design",
                                  style: GoogleFonts.spaceMono(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  CupertinoIcons.heart_fill,
                                  color: Color.fromARGB(255, 18, 58, 93),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: Text(
                              "20 Lectures",
                              style: GoogleFonts.spaceMono(
                                  fontSize: 15, color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12, right: 12, top: 15),
                    child: Container(
                      height: 210,
                      width: 155,
                      decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Container(
                            height: 140,
                            width: 155,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    topLeft: Radius.circular(20)),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("./images/image.png"))),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Motion Graphics",
                                  style: GoogleFonts.spaceMono(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  CupertinoIcons.heart_fill,
                                  color: Color.fromARGB(255, 18, 58, 93),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: Text(
                              "20 Lectures",
                              style: GoogleFonts.spaceMono(
                                  fontSize: 15, color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
