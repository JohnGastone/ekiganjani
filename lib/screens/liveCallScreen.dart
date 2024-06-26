// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LiveCallScreen extends StatefulWidget {
  const LiveCallScreen({super.key});

  @override
  State<LiveCallScreen> createState() => _LiveCallScreenState();
}

class _LiveCallScreenState extends State<LiveCallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("./images/p1.png"), fit: BoxFit.cover)),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: CircleAvatar(
                          backgroundColor: Colors.white24,
                          child: Icon(
                            CupertinoIcons.back,
                            color: Colors.white,
                          ),
                        ),
                        onTap: () => Navigator.pop(context),
                      ),
                      Container(
                        height: 130,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
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
                                Icons.arrow_upward,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 250,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white24),
                    child: Center(
                      child: Text(
                        "08:24",
                        style: GoogleFonts.spaceMono(
                            fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: CircleAvatar(
                          backgroundColor: Colors.white24,
                          child: Icon(
                            CupertinoIcons.videocam,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: CircleAvatar(
                          backgroundColor: Colors.redAccent,
                          child: Icon(
                            CupertinoIcons.phone,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: CircleAvatar(
                          backgroundColor: Colors.white24,
                          child: Icon(
                            CupertinoIcons.mic,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  child: Text(
                    "Swipe down to hide chat",
                    style: GoogleFonts.spaceMono(
                        fontSize: 15, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 60,
                  child: Icon(
                    Icons.arrow_downward,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
