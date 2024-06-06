// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  backgroundColor: Color.fromARGB(255, 28, 39, 81),
                  child: Icon(
                    CupertinoIcons.person,
                    color: Colors.white,
                  ),
                ),
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
              backgroundColor: Color.fromARGB(255, 28, 39, 81),
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
                width: 280,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(25)),
                child: TextField(
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
                          fontSize: 12, color: Colors.white)),
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
                            color: Color.fromARGB(255, 28, 39, 81),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Design",
                            style: GoogleFonts.spaceMono(
                              fontSize: 18,
                              color: Color.fromARGB(255, 28, 39, 81),
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
