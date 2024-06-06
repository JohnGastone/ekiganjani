// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Coursedetails extends StatefulWidget {
  const Coursedetails({super.key});

  @override
  State<Coursedetails> createState() => _CoursedetailsState();
}

class _CoursedetailsState extends State<Coursedetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                CircleAvatar(
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Color.fromARGB(255, 28, 39, 81),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.share),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
