import 'package:Portfolio/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: !ResponsiveWidget.isSmallScreen(context)
          ? Column(
              children: <Widget>[
                Text(
                  "Projects 💻",
                  textScaleFactor: 3,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Project(
                    projectName: "YouChat",
                    year: "2020",
                    desc: "Connect with everyone using this Chat App.First,you have to register yourself with Email&Password and after that you can chat with active users.",
                    techUsed: "Flutter",
                    type: "App",
                    // icon: Icon(Icons.chat,color:Colors.black),
                    url: 'https://singhteekam.github.io/ChatApp/#/',
                  ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:  Project(
                    projectName: "Alumni Tracking",
                    year: "2020",
                    desc: "Alumni Tracking System.",
                    techUsed: "HTML,CSS,django,postgresql",
                    type: "Web",
                    url: '',
                  ),
                    )
                  ],
                ),
              ],
            )
          : Column(
              children: <Widget>[
                Text(
                  "Projects 💻",
                  textScaleFactor: 2,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                    child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Project(
                          projectName: "YouChat",
                          year: "2020",
                          desc: "Connect with everyone using this Chat App.First,you have to register yourself with Email&Password and after that you can chat with active users.",
                          techUsed: "Flutter",
                          type: "App",
                          url: 'https://singhteekam.github.io/ChatApp/#/',
                        ),
                      ),
                      Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Project(
                      projectName: "Alumni Tracking",
                      year: "2020",
                      desc: "Alumni Tracking System.",
                      techUsed: "HTML,CSS,django,postgresql",
                      type: "Web",
                      url: '',
                    ),
                  )
                    ],
                  ),
                ),
                
              ],
            ),
    );
  }
}


class Project extends StatelessWidget {

  final String projectName;
  final String year;
  final String desc;
  final String techUsed;
  final String type;
  // final Icon icon;
  final url;

  const Project({Key key, this.projectName, this.year,this.desc,this.techUsed,this.type,this.url}) : super(key: key);

    view(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red[200],
      ),
      width: ResponsiveWidget.isSmallScreen(context)
          ? MediaQuery.of(context).size.width * 0.9
          : MediaQuery.of(context).size.width * 0.45,
      height: ResponsiveWidget.isSmallScreen(context)
          ? MediaQuery.of(context).size.height * 0.50
          : MediaQuery.of(context).size.height * 0.43,
      child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
        children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(projectName,
                    textScaleFactor: 1.5,
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold)),
                Text(year,
                    textScaleFactor: 1.2,
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold)),
                // IconButton(icon: icon, onPressed: null)
                InkWell(
                  onTap:()=>view(url),
                  child: Text("View",textScaleFactor: 1.2,
                    style: TextStyle(
                        decoration: TextDecoration.underline,color: Colors.deepPurple,
                        fontWeight: FontWeight.bold)),
                )
              ],
            ),
            Text("Description",
                textScaleFactor: 1.5,
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: ResponsiveWidget.isSmallScreen(context)
                    ? MediaQuery.of(context).size.width * 0.7
                    : MediaQuery.of(context).size.width * 0.7,
                height: ResponsiveWidget.isSmallScreen(context)
                    ? MediaQuery.of(context).size.height * 0.15
                    : MediaQuery.of(context).size.height * 0.15,
                child: SingleChildScrollView(
                  child: Text(
                      desc,
                      textScaleFactor: 1.2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
            ),
            Column(
              // alignment: WrapAlignment.center,
              children: <Widget>[
                Text("Technology used:",
                    textScaleFactor: 1.5,
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold)),
                Text(techUsed,
                    textScaleFactor: 1.5,
                    style: TextStyle(
                        fontWeight: FontWeight.bold)),
                
              ],
            ),

            Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
                  Text(type,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                ])
        ],
      ),
          )),
    );
  }
}

