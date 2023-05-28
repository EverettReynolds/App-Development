import 'package:flutter/material.dart';
void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My First Flutter App',
        theme: ThemeData( primarySwatch: Colors.blue, ),
        //      primarySwatch is the
        //      different shades of a color a
        //      material app will use.
        home: const  HomePage ()
    );
  }
}  // End of MyApp
// CONTINUE ON NEXT PAGE
class HomePage extends StatelessWidget {
  const HomePage ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar( title: const Text( "My Hello Flutter Home Page" )  ),
        body:  const HelloFlutterText()
    );
  }
} // End of HomePage
class HelloFlutterText extends StatelessWidget {
  const HelloFlutterText ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text( 'Hello Flutter',
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 48.0,
                fontWeight: FontWeight.bold)
        )
    );
  }
} // End of HelloFlutterText
