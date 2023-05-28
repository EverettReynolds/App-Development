import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      // title: 'My Second Flutter App',

        theme: ThemeData( primarySwatch: Colors.blue, ),

        home: const HomePage(
            homePageTitle: 'Startup Namer'
        )
    );
  }

}   // end of MyApp



// CODE IS CONTINUED ON THE NEXT PAGE





class HomePage extends StatelessWidget {

  const
  HomePage({Key? key, required this.homePageTitle }) :
        super(key: key);

  final String homePageTitle;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar( title: Text( homePageTitle ) ),
        body: const FlutterList2()
    );



  }

} // end of HomePage




class HelloFlutterText extends StatelessWidget {

  const HelloFlutterText ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final WordPair myWords = WordPair.random();

    return Center(
        child: Text( myWords.asPascalCase,
            textDirection: TextDirection.ltr,
            style: const TextStyle(fontSize: 48.0,
                fontWeight: FontWeight.bold)
        )
    );
  }
}   // end of HelloFlutterText

class FlutterList extends StatelessWidget {

  const FlutterList ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final WordPair myWords = WordPair.random();

    return ListView(

        children: <Widget>[

          ListTile(
              title: Text(myWords.asPascalCase)
          ),

          ListTile(
              title: Text(myWords.asPascalCase)
          ),

          ListTile(
              title: Text(myWords.asPascalCase)
          ),

        ]

    );

  }

}   // end of FlutterList */

class FlutterList2 extends StatelessWidget {


  const FlutterList2 ({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    final WordPair myWords1 = WordPair.random();
    final WordPair myWords2 = WordPair.random();
    final WordPair myWords3 = WordPair.random();
    final WordPair myWords4 = WordPair.random();
    final WordPair myWords5 = WordPair.random();
    //final Icon iconPic = Icon;

    return ListView(

        children: <Widget>[

          ListTile(
              leading: const Icon(Icons.add_alert_sharp),
              title: Text(myWords1.asPascalCase)
          ),

          ListTile(
              leading: const Icon(Icons.add_to_drive_sharp),
              title: Text(myWords2.asPascalCase)
          ),

          ListTile(
              leading: const Icon(Icons.rsvp_sharp),
              title: Text(myWords3.asPascalCase)
          ),
          ListTile(
              leading: const Icon(Icons.earbuds_sharp),
              title: Text(myWords4.asPascalCase)
          ),
          ListTile(
              leading: const Icon(Icons.train_sharp),
              title: Text(myWords5.asPascalCase)
          ),
        ]


    );

  }

}    // end of FlutterList2


// --------------------- End of main.dart  ----------

