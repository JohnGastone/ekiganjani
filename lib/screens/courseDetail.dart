// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/courses_model.dart';

class Coursedetails extends StatefulWidget {
  const Coursedetails({super.key});

  @override
  State<Coursedetails> createState() => _CoursedetailsState();
}

class _CoursedetailsState extends State<Coursedetails> {
  List<CourseModulesModel> getModules =
      List.from(CourseModulesList.displayCourseModules);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(children: [
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
                          color: Color.fromARGB(255, 18, 58, 93),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      )),
                  Text("Course Details",
                      style: GoogleFonts.spaceMono(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 18, 58, 93),
                      )),
                  CircleAvatar(
                      backgroundColor: const Color.fromARGB(60, 214, 209, 209),
                      child: Icon(
                        CupertinoIcons.heart,
                        color: Color.fromARGB(255, 18, 58, 93),
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
                color: Color.fromARGB(255, 18, 58, 93),
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
                        color: Color.fromARGB(255, 18, 58, 93),
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
                              color: Color.fromARGB(255, 18, 58, 93),
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
                        color: Color.fromARGB(255, 18, 58, 93),
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
                              color: Color.fromARGB(255, 18, 58, 93),
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
                      style: GoogleFonts.spaceMono(
                        fontSize: 20,
                        color: Color.fromARGB(255, 18, 58, 93),
                      ))
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
                    style:
                        GoogleFonts.spaceMono(fontSize: 18, color: Colors.grey),
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
                            color: Color.fromARGB(255, 18, 58, 93),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 3,
                        width: 115,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 18, 58, 93),
                            borderRadius: BorderRadius.circular(10)),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 11,
                  ),
                  Text("Benefits",
                      style: GoogleFonts.spaceMono(
                          fontSize: 18, color: Colors.grey))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1, mainAxisSpacing: 20),
                  itemCount: getModules.length,
                  itemBuilder: (context, index) => InkWell(
                        child: Card(
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
                                            image: AssetImage(
                                                "./images/image.png"),
                                            fit: BoxFit.cover)),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        getModules[index].moduleName!,
                                        style: GoogleFonts.spaceMono(
                                            fontSize: 16,
                                            color:
                                                Color.fromARGB(255, 18, 58, 93),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        getModules[index].moduleDuration!,
                                        style: GoogleFonts.spaceMono(
                                            fontSize: 16,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w400),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Image.asset(
                                    ("./images/progress.png"),
                                    height: 50,
                                    width: 50,
                                  )
                                ],
                              ),
                            )),
                      )),
            ),
            SizedBox(
              height: 50,
            )
          ]),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 15, bottom: 30),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 18, 58, 93),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "\$ 25",
                      style: GoogleFonts.spaceMono(
                          fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 18, 58, 93),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Buy Now",
                          style: GoogleFonts.spaceMono(
                              fontSize: 16, color: Colors.white),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          CupertinoIcons.arrow_right,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
