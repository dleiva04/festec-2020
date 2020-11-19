import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/screens/home.dart';
import 'package:todo_app/screens/profile.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  static List<Task> tasks = [];
  final List<Widget> pages = [
    Home(tasks),
    null,
    null,
    null,
    Profile(),
  ];
  Color blue = Color(0xff1579B2);

  int current = 0;
  int con = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "TO DO",
          style: GoogleFonts.poppins(
              color: Colors.blue, fontSize: 25.0, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          Image(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1593642634443-44adaa06623a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1225&q=80"))
        ],
      ),
      body: pages[current],
      floatingActionButton: FlatButton(
        onPressed: () {
          tasks.add(
            Task(
              key: '$con',
              title: lipsum.createWord(numWords: 3),
              state: false,
            ),
          );
          con++;
        },
        height: 65,
        minWidth: 0,
        child: Icon(
          Icons.add,
          size: 35,
          color: Platform.isAndroid ? Colors.white : Colors.black,
        ),
        color: blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (c) {
          setState(() {
            print(c);
            current = c;
          });
        },
        currentIndex: current,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Ionicons.grid_outline),
            backgroundColor: blue,
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Ionicons.compass_outline),
            backgroundColor: blue,
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Ionicons.add),
            backgroundColor: blue,
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Ionicons.chatbubble_outline),
            backgroundColor: blue,
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Ionicons.person),
          ),
        ],
      ),
    );
  }
}
