// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                  image: AssetImage("./images/image.png"), fit: BoxFit.cover)),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white24,
                        child: Icon(
                          CupertinoIcons.back,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: 90,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                                image: AssetImage("./images/image.png"),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
