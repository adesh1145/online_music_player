// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

 var explorePage=Column(
          children: [
            // explore
            Container(
              margin: EdgeInsets.only(top: 40,left: 10,bottom: 10),
              child: Row(
                children: [
                  Text("Explore",
                    style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            // "Recently Played"
          Container(
              margin: EdgeInsets.only(top: 10,left: 10,bottom: 10),
              child: Row(
                children: [
                  Text("Recently Played",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
        //  Item recently played
         SizedBox(
            height: 180,
            // color: Colors.amber,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
              return Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10,bottom: 3),
                    height: 120,
                    width: MediaQuery.of(context).size.width* 0.33,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.red,
                    ),
                    child: Image.asset("assets/music.png"),
                  ),
                  
                  Text("aaasasGGGa",
                    style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),  
                ],
              );
            }
            ),
            itemCount: 51,
            ),
          ),
        //  Recomended For you
      SizedBox(
        height: 293*3,
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: ((context, index) {
            return Column(
              children: [
                    Container(
              margin: EdgeInsets.only(top: 10,left: 10,bottom: 10),
              child: Row(
                children: [
                  Text("Recomended For you",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
        //  Item recently played
         SizedBox(
            height: 250,
            // color: Colors.amber,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
              return Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10,bottom: 3),
                    height: 180,
                    width: MediaQuery.of(context).size.width* 0.55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.red,
                    ),
                    child: Image.asset("assets/music.png"),
                  ),
                  
                  Text("aaasasGGGa",
                    style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),  
                ],
              );
            }
            ),
            itemCount: 51,
            ),
          ), 
        
              ],
            );
          
        }
        ),
        itemCount: 3,
        ),
      ),
      
        ],
        );
    

