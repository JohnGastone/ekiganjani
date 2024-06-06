// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ekiganjani/screens/homeScreen.dart';
import 'package:ekiganjani/screens/liveCallScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Landingscreen extends StatefulWidget {
  const Landingscreen({super.key});

  @override
  State<Landingscreen> createState() => _LandingscreenState();
}

class _LandingscreenState extends State<Landingscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 39, 81),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white24,
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Skip",
                          style: GoogleFonts.spaceMono(
                              fontSize: 18, color: Colors.white),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Image.asset("./images/g.png"),
              Container(
                height: 1000,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(100),
                        topLeft: Radius.circular(100))),
                child: Column(
                  children: [
                    Image.asset(
                      "./images/more.png",
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Welcome",
                      style: GoogleFonts.spaceMono(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "eKiganjani",
                      style: GoogleFonts.spaceMono(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 28, 39, 81),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 28.0, right: 28.0),
                      child: Text(
                        "Here you can learn in demand skills at your own pace, you are not late start now!!",
                        style: GoogleFonts.spaceMono(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: 60,
                        width: 250,
                        child: FloatingActionButton(
                          backgroundColor: Color.fromARGB(255, 28, 39, 81),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LiveCallScreen()));
                          },
                          child: Text(
                            "Get Started",
                            style: GoogleFonts.spaceMono(
                                fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
