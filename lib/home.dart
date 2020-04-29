import 'package:Portfolio/Home/Info.dart';
import 'package:Portfolio/Home/MySkills.dart';
import 'package:Portfolio/Home/projects.dart';
import 'package:Portfolio/Home/socialInfo.dart';
import 'package:Portfolio/responsive_widget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          // elevation: 0.0,
          title:  Text("Portfolio"),
             flexibleSpace: Container(
           decoration: BoxDecoration(
           gradient: LinearGradient(
           begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              Colors.red,
              Colors.indigo,
              Colors.blue
            ])
           ),
          ),
          //       shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.vertical(
          //       bottom: Radius.circular(30),
          //   ),
          // ),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  stops: [
                0.1,
                0.4,
                0.6,
                0.9
              ],
                  colors: [
                Colors.greenAccent[100],
                Colors.red[200],
                Colors.indigo[300],
                Colors.teal[300],
              ])),
          child: SingleChildScrollView(
            child: AnimatedPadding(
                duration: Duration(seconds: 1),
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
                child: Column(children: <Widget>[
                  // Container(
                  //   child: Text(
                  //     "Hello,I'm Teekam Singh",
                  //     textScaleFactor: 2, 
                  //   ),
                  // ),
                  // Anim(),
                  
                  Info(),
                  Projects(),
                  MySkills(),
                  SocialInfo(),
                  
                  Bottom()
                ])),
          ),
        ),
      ),
    );
  }
}

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:20.0),
      child: Column(
        children: <Widget>[
          Text(
            "BUILT BY ",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,decoration: TextDecoration.underline,fontStyle: FontStyle.italic,
              fontSize: 25,
            ),
          ),
          Text(
            "@Teekam Singh❤️",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}



// Color.fromARGB(255, 25,178,238),
// Color.fromARGB(255, 21,236,229)