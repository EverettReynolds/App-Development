import 'package:flutter/material.dart';
import 'package:hyperlinks/landing_page.dart';

import 'method1_hyperlinks.dart';
import 'method2_hyperlinks.dart';

const String _appTitle = 'Hyperlinks';

var hyperlinksNavRoutes = <String, WidgetBuilder>{

  // in main.dart
  'first_screen' : (context) => const MyHomePage(),

  'hyperlink1' : (context) => const Method1Display(),

  'hyperlink2' : (context) => const Method2Display(),

  // add other screens here !!!
};

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      // Remove the debug banner
      debugShowCheckedModeBanner: false,

      title: _appTitle,

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      initialRoute: 'first_screen',
      routes: hyperlinksNavRoutes,
    );

  }
}   // end of MyApp

// CONTINUE ON THE NEXT PAGE

class MyHomePage extends StatelessWidget {

  const MyHomePage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text(_appTitle),
      ), // AppBar


      body: const LandingPage(),

    ); // Scaffold

  }

}  // end of MyHomePage


//    end of main.dart
