
import 'package:flutter/material.dart';

import 'Field.dart';
import 'List.dart';

class team extends StatefulWidget {
  @override
  _teamState createState() => _teamState();
}

class _teamState extends State<team> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff152726),
            toolbarHeight: 300,
            automaticallyImplyLeading: false,
            centerTitle: true,

            title: Image(image:AssetImage("Assests/Images/team header large.png"),fit: BoxFit.cover,alignment: Alignment.centerLeft,),
            bottom: TabBar(

              indicatorWeight: 5,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.white,

          unselectedLabelColor: Color(0xff88B588),
          tabs: [
            Tab(child: Container(width: 150,child: Center(child: Text("LIST")))),
            Tab(child: Container(width: 150,child: Center(child: Text("    FIELD    "))),)
          ],
            ),
          ),
          body: TabBarView(
            children: [
            ListsPlayer(),
              Container()
            ],
          ),


        ));
  }
}
