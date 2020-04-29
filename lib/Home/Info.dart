import 'package:Portfolio/responsive_widget.dart';
import 'package:flutter/material.dart';

class Infor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hello, I am Teekam Singh,a Flutter developer.",
        style: TextStyle(
          fontWeight: FontWeight.bold,fontSize: ResponsiveWidget.isSmallScreen(context)?15:30
        ),
      ),
    );
  }
}

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Padding(
        padding: const EdgeInsets.only(top: 18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                TSDot(),
                Infor(),
              ],
            ),
            
            AnimatedContainer(
              duration: Duration(seconds: 1),
              height: ResponsiveWidget.isSmallScreen(context)
                  ? MediaQuery.of(context).size.height * 0.25
                  : MediaQuery.of(context).size.width * 0.25,
              width: ResponsiveWidget.isSmallScreen(context)
                  ? MediaQuery.of(context).size.height * 0.25
                  : MediaQuery.of(context).size.width * 0.25,
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
            )
          ],
        ),
      ),

      smallScreen: Padding(
        padding: const EdgeInsets.only(top: 18.0),
        child: Column(
          children: <Widget>[
            // Text(
            //   "About Me 🙋‍♂️",
            //   textScaleFactor: 2,
            //   style: TextStyle(
            //     fontWeight: FontWeight.bold,color: Colors.black,
            //   ),
            // ),
            TSDot(),
            AnimatedContainer(
              duration: Duration(seconds: 1),
              height: ResponsiveWidget.isSmallScreen(context)
                  ? MediaQuery.of(context).size.height * 0.25
                  : MediaQuery.of(context).size.width * 0.25,
              width: ResponsiveWidget.isSmallScreen(context)
                  ? MediaQuery.of(context).size.height * 0.25
                  : MediaQuery.of(context).size.width * 0.25,
              decoration: BoxDecoration(
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

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Infor(),
            ),
          ],
        ),
      ),
    );
  }
}

class TSDot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "TS",
          textScaleFactor:ResponsiveWidget.isSmallScreen(context)?3:3.5,
          style:TextStyle(fontWeight:FontWeight.bold,),
        ),
        Text("❤️",textScaleFactor:ResponsiveWidget.isSmallScreen(context)?1.5:1.7,),
       
      ],
      
    );
  }
}