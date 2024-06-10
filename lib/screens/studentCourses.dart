// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/courses_model.dart';

class StudentCourses extends StatefulWidget {
  const StudentCourses({super.key});

  @override
  State<StudentCourses> createState() => _StudentCoursesState();
}

class _StudentCoursesState extends State<StudentCourses> {
  List<CoursesModel> getCourses = List.from(CourseList.getAllCourses);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(top: 15, right: 15, left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white24,
                child: InkWell(
                  child: Icon(CupertinoIcons.back),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Text(
                "My Courses",
                style: GoogleFonts.spaceMono(
                    fontSize: 24,
                    color: Color.fromARGB(255, 18, 58, 93),
                    fontWeight: FontWeight.bold),
              ),
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
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: getCourses.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 10),
                    child: SizedBox(
                      width: 400,
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
                                    getCourses[index].courseName!,
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
                                        color: Color.fromARGB(255, 18, 58, 93),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        getCourses[index].courseInstructor!,
                                        style: GoogleFonts.spaceMono(
                                            fontSize: 16, color: Colors.white),
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
                                          getCourses[index].courseVideos!,
                                          style: GoogleFonts.spaceMono(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                        SizedBox(
                                          width: 40,
                                        ),
                                        Text(
                                          getCourses[index].progress!,
                                          style: GoogleFonts.spaceMono(
                                              fontSize: 16,
                                              color: Colors.white),
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
                                      color: Colors.white,
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 143,
                                          height: 10,
                                          decoration: BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 18, 58, 93),
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                        ),
                                        Container(
                                          width: 47,
                                          height: 10,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
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
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
