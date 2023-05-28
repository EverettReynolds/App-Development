import 'package:flutter/material.dart';
import 'package:images_app/page02_data_file.dart';
import 'display_file.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title:  'images_app',

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: const DisplayImage(),

      initialRoute: 'first',


      routes:myNavRoutes,

    );      // MaterialApp

  }

}  // end of MyApp
