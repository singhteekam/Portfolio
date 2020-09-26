import 'package:Portfolio/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        // brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.aBeeZeeTextTheme(
        Theme.of(context).textTheme,
       ),
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


// "src": "icons/Icon-192.png",
