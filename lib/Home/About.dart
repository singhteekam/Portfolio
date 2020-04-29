import 'package:Portfolio/responsive_widget.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children:<Widget>[

                Center(
                  child: AnimatedContainer(
              duration: Duration(seconds: 1),
              height: ResponsiveWidget.isSmallScreen(context)
                    ? MediaQuery.of(context).size.height * 0.15
                    : MediaQuery.of(context).size.width * 0.15,
              width: ResponsiveWidget.isSmallScreen(context)
                    ? MediaQuery.of(context).size.height * 0.15
                    : MediaQuery.of(context).size.width * 0.15,
              decoration: BoxDecoration(
                  // backgroundBlendMode: BlendMode.luminosity,
                  //color: Colors.white,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/mypic.jpg"),
                    // image: NetworkImage(
                    //     'https://drive.google.com/uc?export=view&id=1SO8X6isAQ3zfsQSuapOsj3SS9k21IFdW'),
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                  ),
              ),
            ),
                ),

                Container(
                  alignment: Alignment.center,
                  width: 3000,
                  child: Column(
                    children: <Widget>[
                      Text("Intro",textScaleFactor: 2.2,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,color: Colors.black,decoration: TextDecoration.underline,
                        ),),
                        Text("I am Teekam Singh,a flutter developer.I am also a student.I have completed my Senior Secondary Education from Delhi Public School,Mathura.Currently I am pursuing my B.Tech from ABES Engineering College,Ghaziabad.",
                          textAlign:TextAlign.center,textScaleFactor: 1.5,style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),),

                 

                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Container(
                    alignment: Alignment.center,
                    width: 3000,
                    child: Column(
                      children: <Widget>[
                        Text("Technical Skills",textScaleFactor: 2.2,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,color: Colors.black,decoration: TextDecoration.underline
                          ),),
                          Text("1.I have knowledge of App&Web development.\n"
                          "2.I have 5 stars in Problem Solving on Hacker Rank.",textAlign:TextAlign.center,textScaleFactor: 1.5,style: TextStyle(fontWeight:FontWeight.bold),
                          )
                      ],
                    ),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Container(
                    alignment: Alignment.center,
                    width: 3000,
                    child: Column(
                      children: <Widget>[
                        Text("Contact ",textScaleFactor: 2.2,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,color: Colors.black,decoration: TextDecoration.underline
                          ),),
                         Row(
                           mainAxisAlignment:MainAxisAlignment.center,
                           children:<Widget>[
                             Text("Email : ",textAlign:TextAlign.center,textScaleFactor: 1.5,style: TextStyle(fontWeight:FontWeight.bold,),),
                             Text("teekams10999@gmail.com",textScaleFactor: 1.3,style: TextStyle(fontWeight:FontWeight.bold),)
                           ]
                         ),

                      ],
                    ),),
                  ),
              ]
            ),
          )
        ),
    );
  }
}