// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Studentprofile extends StatefulWidget {
  const Studentprofile({super.key});

  @override
  State<Studentprofile> createState() => _StudentprofileState();
}

class _StudentprofileState extends State<Studentprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 39, 81),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 28, 39, 81),
        title: Padding(
          padding: const EdgeInsets.only(right: 110),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                child: CircleAvatar(
                  backgroundColor: Colors.white24,
                  child: Icon(
                    CupertinoIcons.back,
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              Text(
                "Profile",
                style: GoogleFonts.spaceMono(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                height: 600,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(170),
                        topLeft: Radius.circular(170))),
                child: Column(
                  children: [
                    CircleAvatar(
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            image: DecorationImage(
                                image: AssetImage("./images/p2.png"),
                                fit: BoxFit.cover)),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: SizedBox(
                            height: 20,
                            width: 20,
                            child: CircleAvatar(
                              backgroundColor: Colors.white24,
                              child: Icon(
                                CupertinoIcons.pen,
                                color: Color.fromARGB(255, 28, 39, 81),
                                size: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Column(
                        children: [
                          Text(
                            "Kathleen Lugendo",
                            style: GoogleFonts.spaceMono(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 28, 39, 81),
                            ),
                          ),
                          Text(
                            "kathleenlugendo@cyber.com",
                            style: GoogleFonts.spaceMono(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 219, 158, 178),
                                child: Icon(CupertinoIcons.person),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "User Details",
                                style: GoogleFonts.spaceMono(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 28, 39, 81)),
                              )
                            ],
                          ),
                          Icon(CupertinoIcons.forward,
                              color: Color.fromARGB(255, 28, 39, 81))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 169, 158, 219),
                                child: Icon(CupertinoIcons.book),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Certificate",
                                style: GoogleFonts.spaceMono(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 28, 39, 81)),
                              )
                            ],
                          ),
                          Icon(CupertinoIcons.forward,
                              color: Color.fromARGB(255, 28, 39, 81))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 233, 232, 163),
                                child: Icon(Icons.account_balance_wallet),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Payment",
                                style: GoogleFonts.spaceMono(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 28, 39, 81)),
                              )
                            ],
                          ),
                          Icon(CupertinoIcons.forward,
                              color: Color.fromARGB(255, 28, 39, 81))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 185, 130, 190),
                                child: Icon(CupertinoIcons.doc),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Document",
                                style: GoogleFonts.spaceMono(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 28, 39, 81)),
                              )
                            ],
                          ),
                          Icon(CupertinoIcons.forward,
                              color: Color.fromARGB(255, 28, 39, 81))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor:
                                    Color.fromARGB(255, 158, 192, 219),
                                child: Icon(Icons.logout),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Logout",
                                style: GoogleFonts.spaceMono(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 28, 39, 81)),
                              )
                            ],
                          ),
                        ],
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
