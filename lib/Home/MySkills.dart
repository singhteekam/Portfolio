import 'package:Portfolio/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MySkills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,10,0,10),
      child: Container(
        width: ResponsiveWidget.isSmallScreen(context)
                    ? MediaQuery.of(context).size.width*0.9
                    : MediaQuery.of(context).size.width *0.6,
 
        decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),color: Colors.grey,),
        child: Column(children: <Widget>[
          Text(
            "My Skills 💻",
            textScaleFactor:ResponsiveWidget.isSmallScreen(context) ?2:3,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Wrap(
            alignment: WrapAlignment.center,
            children: <Widget>[
            Indicator(
              name: "Dart",
              percent: "60%",
              color: Colors.blue,
              fill: 0.6,
            ),
            Indicator(
              name: "Python",
              percent: "45%",
              color: Colors.red,
              fill: 0.45,
            ),
            Indicator(
              name: "Java",
              percent: "40%",
              color: Colors.green,
              fill: 0.40,
            ),
            Indicator(
              name: "C++",
              percent: "50%",
              color: Colors.cyan,
              fill: 0.5,
            ),
            Indicator(
              name: "HTML",
              percent: "55%",
              color: Colors.purple,
              fill: 0.55,
            ),
            Indicator(
              name: "C",
              percent: "60%",
              color: Colors.orange,
              fill: 0.6,
            ),
            
          ])
        ]),
      ),
    );
  }
}

class Indicator extends StatelessWidget {
  final String name;
  final String percent;
  final Color color;
  final double fill;

  const Indicator({Key key, this.name, this.percent,this.color,this.fill}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new CircularPercentIndicator(
        radius: ResponsiveWidget.isSmallScreen(context)?60:80,
        lineWidth: ResponsiveWidget.isSmallScreen(context)?7:9,
        animation: true,
        percent: fill,
        center: new Text(
          percent,
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
        ),
        footer: new Text(
          name,
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
        ),
        circularStrokeCap: CircularStrokeCap.round,
        progressColor: color,
      ),
    );       
  }
}
