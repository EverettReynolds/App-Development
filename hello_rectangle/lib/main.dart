// ------------------ Beginning of main.dart  ----------

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

const String appTitle = 'Hello Rectangle';

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

        debugShowCheckedModeBanner: false,

        title: appTitle,   //  used by the
        // OS task switcher

        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),

        home: const HomePage(
            homePageTitle: appTitle
        )

    );
  }
}         // end of MyApp



// CONTINUED ON THE NEXT PAGE


class HomePage extends StatelessWidget {

  const
  HomePage({Key? key, required this.homePageTitle }) :
        super(key: key);

  final String homePageTitle;


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar:  AppBar( title: Text(homePageTitle)),

        body: const  DisplayRectangle(),
        //body: const FlutterList(),
    );
  }
} // end of HomePage



// CONTINUE ON NEXT PAGE


class DisplayRectangle extends StatelessWidget{

  const DisplayRectangle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Container(
        color: Colors.blueGrey,
        height: 265.0,
        width: 300.0,
        child: const Center(
          child: FlutterList(),
        ),
      ),
    );
  }
}     // end of DisplayRectangle



class DisplayWelcome extends StatelessWidget{

  const DisplayWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const Text(
        'Hello!',
        style: TextStyle(fontSize: 100.0, fontStyle: FontStyle.italic),
        textAlign: TextAlign.center,
      );

  }
}      // end of DisplayWelcome
class FlutterList extends StatelessWidget {

  const FlutterList ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ListView(

        children: const <Widget>[

          ListTile(
              leading: Icon(Icons.earbuds_sharp),
              title:  Text('Music Playlist')
          ),

          ListTile(
              leading: Icon(Icons.train_sharp),
              title:  Text('Choo Choo Noise Button')
          ),
          ListTile(
              leading: Icon(Icons.facebook),
              title:  Text('Facebook')
          ),
          ListTile(
              leading: Icon(Icons.credit_card),
              title:  Text('Microtransactions')
          ),
          ListTile(
              leading: Icon(Icons.query_builder),
              title:  Text('Make A Query')
          ),

        ]

    );

  }

}   // end of FlutterList

class HelloRectangle extends StatelessWidget {

  const HelloRectangle ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.greenAccent,
        height: 400.0,
        width: 300.0,
        child: const Center(
          child: Text(
            'Hello!',
            style: TextStyle(fontSize: 40.0),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}        // End of HelloRectangle



// --------------------- End of main.dart  ----------

