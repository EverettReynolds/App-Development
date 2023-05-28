import 'package:flutter/material.dart';
import 'data_file.dart';
import 'display_widget.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title:  'http app',

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'first',


      routes:           myNavRoutes              ,

      home: const DisplayPost(),

    );      // MaterialApp

  }

}  // end of MyApp
