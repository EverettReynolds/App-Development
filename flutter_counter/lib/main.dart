import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


void main() => runApp(const MyApp());

const String appTitle = 'Counter';


class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: appTitle,   //  used by the OS task switcher
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const  HomePage(),
    );
  }

}   // End of MyApp


class HomePage extends StatelessWidget {

  const  HomePage({Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar( title: const Text(appTitle) ),
      body:  const DisplayColumn(),

    );
  }

} // End of HomePage


//        CONTINUE ON NEXT PAGE
class DisplayColumn extends StatelessWidget {

  const  DisplayColumn ({Key? key }) :
        super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,

      children: const <Widget>[

        // add a row here,
        Row1Text(),
        DisplayCounterRow(),
        Row3Widgets(),
        DisplayWordPair(),
        //DisplayCounterRow( ),
        //DisplayCounterRow(),
        //DisplayCounterRow(),
        // add another row here,

        // add another row here, etc

      ], // <Widget>[]

    );  // Column
  }

} // End of DisplayColumn
class Row1Text extends StatelessWidget {

  const  Row1Text ({Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const Padding(

      padding: EdgeInsets.fromLTRB(
          8.0,   // Left
          16.0,   // Top
          0.0,    // Right
          0.0     // Bottom
      ),

      child:  Text( 'Now We Add a New Row Here'),

    );

  }

} // End of Row1Text
class Row3Widgets extends StatelessWidget {

  const  Row3Widgets ({Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Row(

      children: <Widget>[

        Padding(

          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton (

          onPressed:nullMethod,

          child: const Icon(Icons.upload_file),
        ),
          // 8 pixel margins on
          //all sides


        ),
       const  Text( 'text.txt' ),




      ],   // Widget


    );

  }
  void nullMethod( ){


  }

} // End of Row3Widgets


class DisplayCounterRow extends StatefulWidget{


  const  DisplayCounterRow ({Key? key }) : super(key: key);

  @override
  MyDisplayCounterState createState( ){

    // The createState method is used to create
    // instances of mutable widgets

    return MyDisplayCounterState( );
  }

}   // End of DisplayCounterRow


class MyDisplayCounterState extends
State<DisplayCounterRow>{

  int count = 0;

  @override
  Widget build(BuildContext context) {

    return Row(

      children: <Widget>[
    Padding(

    padding: const EdgeInsets.all(8.0),
    // 8 pixel margins on
    //all sides

     child: ElevatedButton (

          onPressed: incrementCounter,

          child: const Text('Increment'),
        ),
    ),
        Text( ' count = $count' ),
        Padding(

          padding: const EdgeInsets.all(8.0),
          // 8 pixel margins on
          //all sides

          child: ElevatedButton (

            onPressed: decrementCounter,

            child: const Text('Decrement'),
          ),
        ),


      ],   // Widget


    );       // Row

  }	// build

//        CONTINUE ON NEXT PAGE

  void incrementCounter( ){


    setState( ( ) {
      count = count + 1;
    } ) ;
  }		// incrementCounter()
  void decrementCounter( ){


    setState( ( ) {
      count = count - 1;
    } ) ;
  }
} // end of MyDisplayCounterState



class DisplayWordPair extends StatefulWidget{


  const  DisplayWordPair ({Key? key }) : super(key: key);

  @override
  MyDisplayWordPair createState( ){

    // The createState method is used to create
    // instances of mutable widgets

    return MyDisplayWordPair( );
  }

}   // End of DisplayCounterRow


class MyDisplayWordPair extends
State<DisplayWordPair> {

  WordPair myWords = WordPair.random();

  @override
  Widget build(BuildContext context) {
    return Row(

      children: <Widget>[
        Padding(

          padding: const EdgeInsets.all(8.0),
          // 8 pixel margins on
          //all sides

          child: ElevatedButton(

            onPressed: changeWords,

            child: const Text('Change WordPair'),
          ),
        ),
        Text( myWords.asPascalCase,
             ),


      ], // Widget


    ); // Row

  }

  void changeWords() {
    setState(() {
      myWords = WordPair.random();
    });
  }
// build
// end of MyDisplayCounterState
}
