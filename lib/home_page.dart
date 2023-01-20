// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:online_music_player/all_tabs/library.dart';
import 'package:online_music_player/all_tabs/setting.dart';
import 'all_tabs/explore.dart';
import 'all_tabs/trending.dart';
import 'all_tabs/search.dart';
import 'all_tabs/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
static var AllTabsPageList= <Widget>[explorePage,trendingPage,searchPage,libraryPage,settingage];
int index=0;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:AppBar(title: Text(" "),),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        selectedItemColor: Color.fromARGB(255, 241, 80, 78),
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        iconSize: 32,
        
        
        items: [
        BottomNavigationBarItem(icon: Icon( Icons.music_note, ),
        label: "EXPLORE"),
        BottomNavigationBarItem(icon: Icon( Icons.local_fire_department, ),
        label: "TRENDING"),
        BottomNavigationBarItem(icon: Icon( Icons.search, ),
        label: "SEARCH"),
        BottomNavigationBarItem(icon: Icon( Icons.library_music, ),
        label: "LIBRARY"),
        BottomNavigationBarItem(icon: Icon( Icons.settings, ),
        label: "SETTING"),
      ],
      onTap: (value) {
        setState(() {
          index=value;
        });
      },
      ),
      body: SingleChildScrollView(
        child: AllTabsPageList[index]  ),
    );
  }
}