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
                  style: GoogleFonts.spaceMono(
                    fontSize: 30,
                    color: Color.fromARGB(255, 18, 58, 93),
                  ),
                )
              ],
            ),
          ),
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Container(
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
                          color: Color.fromARGB(255, 18, 58, 93),
                        ),
                        label: Text("Search"),
                        labelStyle: GoogleFonts.spaceMono(
                          fontSize: 15,
                          color: Color.fromARGB(255, 18, 58, 93),
                        )),
                  )),
            ),
            SizedBox(
              height: 35,
            ),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 30),
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: displayChats.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: SizedBox(
                            width: 250,
                            child: Row(
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
                                        color: Color.fromARGB(255, 18, 58, 93),
                                      ),
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
                                  width: 40,
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
                                        backgroundColor:
                                            Color.fromARGB(255, 18, 58, 93),
                                        child: Text(
                                          "${displayChats[index].unreadCount}",
                                          style: GoogleFonts.spaceMono(
                                              fontSize: 12,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
