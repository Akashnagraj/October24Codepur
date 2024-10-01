import 'package:codepur_hindi/screens/homepage.dart';
import 'package:codepur_hindi/screens/login_page.dart';
import 'package:codepur_hindi/utils/myroutes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.pink,
        fontFamily: GoogleFonts.lato(fontSize: 30).fontFamily,
      ),
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute : (context)=> CodePurHindi(), 
      },
    );
  }
}
