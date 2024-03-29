import 'package:flutter/material.dart';
import 'display_list.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  final String appTitle = 'Websites' ;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

        debugShowCheckedModeBanner: false,

        title: appTitle,

        home: Scaffold(

          appBar:  AppBar( title: Text(appTitle)  ),


          body: const MyListDisplay( ),

        )  // Scaffold

    );      // MaterialApp

  }
}  // end of MyApp
