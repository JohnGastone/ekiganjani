// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:ekiganjani/models/courses_model.dart';
import 'package:ekiganjani/screens/courseDetail.dart';
import 'package:ekiganjani/screens/liveCallScreen.dart';
import 'package:ekiganjani/screens/studentProfile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';

import 'chatScreen.dart';
import 'studentCourses.dart';

class MyHomePage extends StatefulWidget {
  final NotchBottomBarController? controller;

  const MyHomePage({super.key, this.controller});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _pageController = PageController(initialPage: 0);

  /// Controller to handle bottom nav bar and also handles initial page
  final NotchBottomBarController _controller =
      NotchBottomBarController(index: 0);

  int maxCount = 5;

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  List<TrendingCoursesModel> getTrendingCourses =
      List.from(TrendingCourseList.displayTrendingCourses);

  void updateList(String value) {
    setState(() {
      getTrendingCourses = TrendingCourseList.displayTrendingCourses
          .where((element) =>
              element.courseName!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> bottomBarPages = [
      MyHomePage(
        controller: (_controller),
      ),
      const ChatScreen(),
      const StudentCourses(),
    ];
    return Scaffold(
      backgroundColor: Color.fromARGB(200, 255, 255, 255),
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
                        child: InkWell(
                      child: Image.asset(
                        "./images/image.png",
                        fit: BoxFit.cover,
                        height: double.infinity,
                        width: double.infinity,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Studentprofile()));
                      },
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
          child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(children: [
                  CustomPaint(
                    painter: CurvePainter(),
                    child: Container(
                      height: 400,
                      width: double.maxFinite,
                      decoration: BoxDecoration(),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Text(
                            "Find your favourite\nCourse here!",
                            style: GoogleFonts.spaceMono(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: 320,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white24,
                                borderRadius: BorderRadius.circular(25)),
                            child: TextField(
                              onChanged: (value) => updateList(value),
                              style: GoogleFonts.spaceMono(
                                  fontSize: 20, color: Colors.white),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                fillColor: Colors.transparent, // Add this line
                                filled: true, // Add this line
                                prefixIcon: Icon(CupertinoIcons.search,
                                    color: Colors.white),
                                suffixIcon: Icon(CupertinoIcons.mic,
                                    color: Colors.white),
                                labelText: "Search course",
                                labelStyle: GoogleFonts.spaceMono(
                                    fontSize: 17, color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              "Below are courses that earned\n        a golden badge",
                              style: GoogleFonts.spaceMono(
                                  fontSize: 15, color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 150,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 244, 241, 241),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Icon(
                                      CupertinoIcons.bookmark_fill,
                                      size: 25,
                                      color: Colors.amberAccent,
                                    )),
                                SizedBox(
                                  height: 20,
                                ),
                                Icon(
                                  CupertinoIcons.hand_draw,
                                  color: Color.fromARGB(255, 18, 58, 93),
                                ),
                                SizedBox(
                                  height: 30,
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
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 150,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 244, 241, 241),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Icon(
                                      CupertinoIcons.bookmark_fill,
                                      size: 25,
                                      color: Colors.amberAccent,
                                    )),
                                SizedBox(
                                  height: 20,
                                ),
                                Icon(
                                  CupertinoIcons.rocket_fill,
                                  color: Color.fromARGB(255, 18, 58, 93),
                                ),
                                SizedBox(
                                  height: 30,
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
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 150,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 244, 241, 241),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.topRight,
                                    child: Icon(
                                      CupertinoIcons.bookmark_fill,
                                      size: 25,
                                      color: Colors.amberAccent,
                                    )),
                                SizedBox(
                                  height: 20,
                                ),
                                Icon(
                                  CupertinoIcons.text_badge_checkmark,
                                  color: Color.fromARGB(255, 18, 58, 93),
                                ),
                                SizedBox(
                                  height: 30,
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
                          )
                        ],
                      ),
                    ),
                  )
                ]),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Trending Courses",
                        style: GoogleFonts.spaceMono(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: const Color.fromARGB(255, 70, 69, 69),
                        ),
                      ),
                      InkWell(
                        child: Text(
                          "My Courses",
                          style: GoogleFonts.spaceMono(
                              fontSize: 20,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StudentCourses()));
                        },
                      )
                    ],
                  ),
                ),
                SizedBox(
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 10),
                      itemCount: getTrendingCourses.length,
                      itemBuilder: (context, index) => InkWell(
                            child: Padding(
                              padding:
                                  EdgeInsets.only(left: 10, right: 10, top: 10),
                              child: InkWell(
                                  child: Container(
                                    height: 290,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 244, 241, 241),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 155,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(20),
                                                  topLeft: Radius.circular(20)),
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: AssetImage(
                                                      "./images/image.png"))),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                getTrendingCourses[index]
                                                    .courseName!,
                                                style: GoogleFonts.spaceMono(
                                                    color: Colors.grey,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Icon(
                                                CupertinoIcons.heart_fill,
                                                color: Color.fromARGB(
                                                    255, 18, 58, 93),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 50),
                                          child: Text(
                                            getTrendingCourses[index]
                                                .courseLectures!,
                                            style: GoogleFonts.spaceMono(
                                                fontSize: 15,
                                                color: Colors.grey),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Coursedetails()));
                                  }),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Coursedetails()));
                            },
                          )),
                ),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 300,
                height: 50,
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Icon(CupertinoIcons.home),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyHomePage()));
                          },
                        ),
                        InkWell(
                          child: Icon(CupertinoIcons.mail),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChatScreen()));
                          },
                        ),
                        Icon(CupertinoIcons.settings),
                        InkWell(
                          child: Icon(CupertinoIcons.video_camera),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LiveCallScreen()));
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Color.fromARGB(255, 28, 39, 81);
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.6);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height * 0.6);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
