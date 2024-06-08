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
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                  backgroundColor: Colors.white24,
                  child: ClipOval(
                    child: Image.asset(
                      "./images/image.png",
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                  )),
              Text(
                "Our Courses",
                style: GoogleFonts.spaceMono(
                    fontSize: 24,
                    color: Color.fromARGB(255, 18, 58, 93),
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
                    color: Colors.grey,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 18, 58, 93),
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
                            color: Colors.grey,
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
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 10, bottom: 10),
                  child: SizedBox(
                    width: 350,
                    height: 123,
                    child: Card(
                      color: Colors.white24,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      image: AssetImage("./images/image.png"),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "UI/UX Design",
                                  style: GoogleFonts.spaceMono(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 18, 58, 93),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.person,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "Omary Mkuse",
                                      style: GoogleFonts.spaceMono(
                                          fontSize: 16, color: Colors.grey),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "12/15 Videos",
                                        style: GoogleFonts.spaceMono(
                                            fontSize: 16, color: Colors.grey),
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Text(
                                        "75%",
                                        style: GoogleFonts.spaceMono(
                                            fontSize: 16, color: Colors.grey),
                                      )
                                    ]),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 10,
                                  width: 190,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white24,
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 143,
                                        height: 10,
                                        decoration: BoxDecoration(
                                            color:
                                                Color.fromARGB(255, 18, 58, 93),
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                      ),
                                      Container(
                                        width: 47,
                                        height: 10,
                                        decoration: BoxDecoration(
                                            color: Colors.white24,
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 10, bottom: 10),
                  child: SizedBox(
                    width: 350,
                    height: 123,
                    child: Card(
                      color: Colors.white24,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      image: AssetImage("./images/image.png"),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Digital Marketing",
                                  style: GoogleFonts.spaceMono(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.person,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "Juma Kilumbi",
                                      style: GoogleFonts.spaceMono(
                                          fontSize: 16, color: Colors.grey),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "12/15 Videos",
                                        style: GoogleFonts.spaceMono(
                                            fontSize: 16, color: Colors.grey),
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Text(
                                        "80%",
                                        style: GoogleFonts.spaceMono(
                                            fontSize: 16, color: Colors.grey),
                                      )
                                    ]),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 10,
                                  width: 190,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white24,
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 152,
                                        height: 10,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                      ),
                                      Container(
                                        width: 38,
                                        height: 10,
                                        decoration: BoxDecoration(
                                            color: Colors.white24,
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 10, bottom: 10),
                  child: SizedBox(
                    width: 350,
                    height: 123,
                    child: Card(
                      color: Colors.white24,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      image: AssetImage("./images/image.png"),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Video Editing",
                                  style: GoogleFonts.spaceMono(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.person,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "Zeynab Kassim",
                                      style: GoogleFonts.spaceMono(
                                          fontSize: 16, color: Colors.grey),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "20/20 Videos",
                                        style: GoogleFonts.spaceMono(
                                            fontSize: 16, color: Colors.grey),
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Text(
                                        "100%",
                                        style: GoogleFonts.spaceMono(
                                            fontSize: 16, color: Colors.grey),
                                      )
                                    ]),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 10,
                                  width: 190,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white24,
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 190,
                                        height: 10,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 10, bottom: 10),
                  child: SizedBox(
                    width: 350,
                    height: 123,
                    child: Card(
                      color: Colors.white24,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                      image: AssetImage("./images/image.png"),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "App Development",
                                  style: GoogleFonts.spaceMono(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.person,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "John Lugendo",
                                      style: GoogleFonts.spaceMono(
                                          fontSize: 16, color: Colors.grey),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "10/30 Videos",
                                        style: GoogleFonts.spaceMono(
                                            fontSize: 16, color: Colors.grey),
                                      ),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Text(
                                        "33%",
                                        style: GoogleFonts.spaceMono(
                                            fontSize: 16, color: Colors.grey),
                                      )
                                    ]),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 10,
                                  width: 190,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white24,
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 64,
                                        height: 10,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                      ),
                                      Container(
                                        width: 126,
                                        height: 10,
                                        decoration: BoxDecoration(
                                            color: Colors.white24,
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
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
