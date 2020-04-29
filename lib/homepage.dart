
import 'package:Portfolio/Home/About.dart';
import 'package:Portfolio/Home/resume.dart';
import 'package:Portfolio/home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new TabBarView(
        controller: _tabController,
          children: <Widget>[
            new MyHomePage(),
            new Resume(),
            new About(),
          ]
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [
                0.2,
                0.5,
                0.8,
                // 0.9
              ],
                  colors: [
                Colors.green,
                Colors.red,
                Colors.indigo,
                // Colors.teal
              ])),
        child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.green,
              tabs: <Widget>[
                new Tab(text: "Home",),
                new Tab(text:"Resume"),
                new Tab(text: "About",),
                
              ],
          ),
      ),
        backgroundColor: Colors.blue,
    );
  }

  TabController _tabController;
  var fabIcon = "Home";

  @override
  void initState(){
    super.initState();
    _tabController =new TabController(length: 3, vsync: this,initialIndex: 0);
    _tabController.addListener((){
      setState(() {
        switch(_tabController.index){
          case 0:
            fabIcon="Home";
            break;
          case 1:
            fabIcon="Resume";
            break;
          case 2:
            fabIcon="About";
            break;
         
        }
      });
    });
  }
}