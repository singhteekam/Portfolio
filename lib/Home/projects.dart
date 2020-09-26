import 'package:Portfolio/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
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
                Wrap(

                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Project(
                    projectName: "SEI",
                    year: "2020",
                    desc: "Somnath Education Institute Official Website.",
                    techUsed: "Node.js",
                    type: "Web",
                    // icon: Icon(Icons.chat,color:Colors.black),
                    url: 'http://somnatheducation.herokuapp.com/',
                    code: 'http://somnatheducation.herokuapp.com/'
                  ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Project(
                    projectName: "My Diary",
                    year: "2020",
                    desc: "Personal Diary app.",
                    techUsed: "Flutter",
                    type: "App",
                    // icon: Icon(Icons.chat,color:Colors.black),
                    url: '',
                    code:''
                  ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Project(
                    projectName: "KBC",
                    year: "2020",
                    desc: "Kaun Banega Crorepati Game with lifelines.",
                    techUsed: "Flutter",
                    type: "App",
                    // icon: Icon(Icons.chat,color:Colors.black),
                    url: '',
                    code:''
                  ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Project(
                    projectName: "TicTacToe",
                    year: "2020",
                    desc: "Play Tic Tac Toe Game.",
                    techUsed: "Flutter",
                    type: "App",
                    // icon: Icon(Icons.chat,color:Colors.black),
                    url: '',
                    code:''
                  ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Project(
                    projectName: "YouChat",
                    year: "2020",
                    desc: "Private and Group chat application.",
                    techUsed: "Flutter",
                    type: "App",
                    // icon: Icon(Icons.chat,color:Colors.black),
                    url: '',
                    code:''
                  ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Project(
                    projectName: "PlayMusic",
                    year: "2020",
                    desc: "Music Player application.",
                    techUsed: "Flutter",
                    type: "App",
                    // icon: Icon(Icons.chat,color:Colors.black),
                    url: '',
                    code:''
                  ),
                    ),
                  //   Padding(
                  //     padding: const EdgeInsets.all(8.0),
                  //     child:  Project(
                  //   projectName: "Alumni Tracking",
                  //   year: "2020",
                  //   desc: "Alumni Tracking System.",
                  //   techUsed: "HTML,CSS,django,postgresql",
                  //   type: "Web",
                  //   url: '',
                  // ),
                  //   )
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
                    projectName: "SEI",
                    year: "2020",
                    desc: "Somnath Education Institute Official Website.",
                    techUsed: "Node.js",
                    type: "Web",
                    // icon: Icon(Icons.chat,color:Colors.black),
                    url: 'http://somnatheducation.herokuapp.com/',
                    code:''
                  ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Project(
                    projectName: "My Diary",
                    year: "2020",
                    desc: "Personal Diary app.",
                    techUsed: "Flutter",
                    type: "App",
                    // icon: Icon(Icons.chat,color:Colors.black),
                    url: '',
                    code:''
                  ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Project(
                    projectName: "KBC",
                    year: "2020",
                    desc: "Kaun Banega Crorepati Game with lifelines.",
                    techUsed: "Flutter",
                    type: "App",
                    // icon: Icon(Icons.chat,color:Colors.black),
                    url: '',
                    code:''
                  ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Project(
                    projectName: "TicTacToe",
                    year: "2020",
                    desc: "Play Tic Tac Toe Game.",
                    techUsed: "Flutter",
                    type: "App",
                    // icon: Icon(Icons.chat,color:Colors.black),
                    url: '',
                    code:''
                  ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Project(
                    projectName: "YouChat",
                    year: "2020",
                    desc: "Private and Group chat application.",
                    techUsed: "Flutter",
                    type: "App",
                    // icon: Icon(Icons.chat,color:Colors.black),
                    url: '',
                    code:''
                  ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Project(
                    projectName: "PlayMusic",
                    year: "2020",
                    desc: "Music Player application.",
                    techUsed: "Flutter",
                    type: "App",
                    // icon: Icon(Icons.chat,color:Colors.black),
                    url: '',
                    code:''
                  ),
                    ),
                  //     Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Project(
                  //     projectName: "Alumni Tracking",
                  //     year: "2020",
                  //     desc: "Alumni Tracking System.",
                  //     techUsed: "HTML,CSS,django,postgresql",
                  //     type: "Web",
                  //     url: '',
                  //   ),
                  // )
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
  final code;

  const Project({Key key, this.projectName, this.year,this.desc,this.techUsed,this.type,this.url,this.code}) : super(key: key);

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
      // height: ResponsiveWidget.isSmallScreen(context)
      //     ? MediaQuery.of(context).size.height * 0.40
      //     : MediaQuery.of(context).size.height * 0.43,
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
                Tooltip(
                  message:"See Project",
                    child: InkWell(
                    onTap:()=>view(url),
                    child: Icon(Entypo.globe,)
                  ),
                ),
                 Tooltip(
                   message: "See repository",
                    child: InkWell(
                    onTap:()=>view(code),
                    child: Icon(Entypo.github)
                ),
                 )
              ],
            ),
            Divider(),
            Text("Description",
                textScaleFactor: 1.5,
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold)),
            Container(
              width: ResponsiveWidget.isSmallScreen(context)
                  ? MediaQuery.of(context).size.width * 0.7
                  : MediaQuery.of(context).size.width * 0.7,
              height: ResponsiveWidget.isSmallScreen(context)
                  ? MediaQuery.of(context).size.height * 0.085
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
            Divider(),
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

