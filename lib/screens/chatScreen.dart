// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ekiganjani/models/chats_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatsModel> displayChats = List.from(ChatList.displayChats);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(CupertinoIcons.person),
              SizedBox(
                width: 80,
              ),
              Text(
                "Chats",
                style: GoogleFonts.spaceMono(fontSize: 30, color: Colors.blue),
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(60, 136, 150, 171)),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          CupertinoIcons.search,
                          color: Colors.blue,
                        ),
                        label: Text("Search"),
                        labelStyle: GoogleFonts.spaceMono(
                            fontSize: 15, color: Colors.blue)),
                  )),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 150,
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: displayChats.length,
                    itemBuilder: (context, index) => Row(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: CircleAvatar(
                              child: ClipOval(
                            child: Image.asset(
                              "./images/image.png",
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          )),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              displayChats[index].name!,
                              style: GoogleFonts.spaceMono(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              displayChats[index].chatPlaceholder!,
                              style: GoogleFonts.spaceMono(
                                  fontSize: 13, color: Colors.grey),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              displayChats[index].chatTime!,
                              style: GoogleFonts.spaceMono(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 20,
                              width: 20,
                              child: CircleAvatar(
                                backgroundColor: Colors.blue,
                                child: Text(
                                  "${displayChats[index].unreadCount}",
                                  style: GoogleFonts.spaceMono(
                                      fontSize: 12, color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
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
