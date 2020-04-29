
import 'package:flutter/material.dart';

class Resume extends StatelessWidget {

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
          child: new ListView(
            
            children: <Widget>[
             Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,
               children:<Widget>[
                 Text("Resume",textAlign:TextAlign.center,
                style:TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,decoration: TextDecoration.underline,fontSize: 25),),
             Padding(padding: const EdgeInsets.only(top: 20),),
                 Text("Teekam Singh",textAlign:TextAlign.start,
                style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
             Padding(padding: const EdgeInsets.only(top: 20),),

              Text("+91-844*******",textAlign:TextAlign.start,
                style:TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
             Padding(padding: const EdgeInsets.only(top: 20),),
            
              Text("teekams10999@gmail.com",textAlign:TextAlign.start,
                style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
             Padding(padding: const EdgeInsets.only(top: 20),),

            
            
            Text("Career Objective:",textAlign:TextAlign.start,
                style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25,decoration: TextDecoration.underline),),
            Padding(padding: const EdgeInsets.only(top: 6),),
            Text("To work in a dynamic environment that enables me to utilize my Knowledge and learn new things,and to progress professionally and personally.",textAlign:TextAlign.start,
                style:TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),),
            Padding(padding: const EdgeInsets.only(top: 10),),

            Text("Academic Record:",textAlign:TextAlign.start,
                style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25,decoration: TextDecoration.underline),),
             Padding(padding: const EdgeInsets.only(top: 10),),
            Table(
              border:TableBorder.all(width: 0.5,color: Colors.black),
              children: [
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("Level Of Education",style: TextStyle(fontWeight:FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("Institution",style: TextStyle(fontWeight:FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("Board/University",style: TextStyle(fontWeight:FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("Year of Passing",style: TextStyle(fontWeight:FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("Aggregate",style: TextStyle(fontWeight:FontWeight.bold),),
                    )
                  ]
                ),
                 TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("B.Tech upto 3rd sem"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("ABES EC"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("AKTU"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("2022"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("86%"),
                    )
                  ]
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("Intermediate"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("Delhi Public School"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("CBSE"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("2018"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("92.2%"),
                    )
                  ]
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("High School"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("St. Francis School"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("ICSE"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("2016"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("91.2%"),
                    )
                  ]
                ),
              ],
            ),
            Padding(padding: const EdgeInsets.only(top: 20),),
            Text("Technical Skills:",textAlign:TextAlign.start,
                style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25,decoration: TextDecoration.underline),),
            Padding(padding: const EdgeInsets.only(top: 10),),
            Table(
              border: TableBorder.all(width: 0.5,color: Colors.black),
              columnWidths: {2:FractionColumnWidth(.5)},
              defaultColumnWidth: FixedColumnWidth(1.0),
              children: [
                TableRow(
                children:[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("Programming Languages",style: TextStyle(fontWeight:FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("C++,C,Java,Python,HTML,Dart"),
                  ),
                ]
              ),
              TableRow(
                children:[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("Web Development",style: TextStyle(fontWeight:FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("HTML,CSS,django(Backend),Postgresql",softWrap: true,),
                  ),
                ]
              ),
              TableRow(
                children:[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("App Development",style: TextStyle(fontWeight:FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("Flutter,Firebase(Backend)"),
                  ),
                ]
              ),
              ]  
            ),

            Padding(padding: const EdgeInsets.only(top: 20),),
            Text("Academic Projects:",textAlign:TextAlign.start,
                style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25,decoration: TextDecoration.underline),),
            Padding(padding: const EdgeInsets.only(top: 10),),

            Table(
              border: TableBorder.all(width: 0.5,color: Colors.black),
              children:[
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("Project Title",style: TextStyle(fontWeight:FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("Alumini Tracking System"),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("Technology Used",style: TextStyle(fontWeight:FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("HTML,CSS,JavaScript,django,Postgresql"),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("Team Size",style: TextStyle(fontWeight:FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("6"),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("Description",style: TextStyle(fontWeight:FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("To Track Aluminies"),
                  ),
                ])
              ]
            ),

            Padding(padding: const EdgeInsets.only(top: 20),),
            Text("Personal Details:",textAlign:TextAlign.start,
                style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25,decoration: TextDecoration.underline),),
            Padding(padding: const EdgeInsets.only(top: 10),),
            Table(
              border: TableBorder.all(width: 0.5,color: Colors.black),
              children:[
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("Date of Birth",style: TextStyle(fontWeight:FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("10 Sept, 2001"),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("Gender",style: TextStyle(fontWeight:FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("Male"),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("Language Known",style: TextStyle(fontWeight:FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("Hindi,English"),
                  ),
                ]),
                TableRow(children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("Address",style: TextStyle(fontWeight:FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("Gaur Global Village,Crossings Republic"),
                  ),
                ]),
              ],
            ),

            Padding(padding: const EdgeInsets.only(top: 20),),
            Text("I hereby declare that all the above information is true and correct to best of my knowledge and belief."),
            Padding(padding: const EdgeInsets.only(top: 20),),

            Table(
              children:[
                TableRow(children: [
                  Text("Date:22 Feb,2020",textAlign:TextAlign.start,
                style:TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  Text("(Teekam Singh)",textAlign:TextAlign.end,
                style:TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                ],),
              ],
            ),
            Padding(padding: const EdgeInsets.only(top: 20),),
               ]
             )
            ],
          ),
        ),
      ),
      // backgroundColor: Colors.teal,
    );
  }
}

