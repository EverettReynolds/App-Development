
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(const MyApp());

const String appTitle = 'Dynamic List';


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
     // body:   DisplayList( ),
      //body: const DisplayStatefulList(),
      body:const DisplayCounterAndList(),

    );
  }

} // End of HomePage


//  CONTINUE ON NEXT PAGE

class DisplayList extends StatelessWidget {

  DisplayList ({Key? key }) : super(key: key);

  final List<String> myStaticList = ['one',

    '2','Three','4','5','six'];

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount:     myStaticList.length,
      itemBuilder:  buildListBody,
    );
  }

  // A Function (or Method) that is
  // called from itemBuilder

  Widget buildListBody(BuildContext context, int index) {

    return ListTile(
      title: Text ( myStaticList[index] ),
    );
  }

}   // end of DisplayList

/*class DisplayList extends StatelessWidget {

  DisplayList ({Key? key }) : super(key: key);

  final List<String> myStaticList = ['one', '2',
    'Three', '4','5','six'];

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount:   myStaticList.length,
      itemBuilder: (BuildContext context,   int  index)  =>
          buildListBody2 (index),
    );
  }

  // A Function (or Method) that is
  // called from itemBuilder

  Widget buildListBody2 ( int  currentIndex ) {

    return ListTile(

      title: Text ( myStaticList [currentIndex] ),
    );

  }

}  */

// end of DisplayList
class DisplayStatefulList extends StatefulWidget{

  const DisplayStatefulList ( {Key? key }) :
        super(key: key );

  // The createState method is used to
  // create instances of mutable widgets

  @override
  MyStatefulListState createState(){
    return MyStatefulListState();
  }

}   // End of DisplayStatefulList

class MyStatefulListState extends
State<DisplayStatefulList>{

  List<String> myList = ['itm 0','itm 1', 'itm 2',
    'itm 3','itm 4','itm 5'];

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount:   myList.length,
      itemBuilder: buildListBody,
    );
  }

  // A Function (or Method) that is
  // called from itemBuilder
  Widget buildListBody(BuildContext context,
      int curIndex ) {

    return ListTile(
      title: Text (  myList[curIndex] ),
    );
  }

} // end of MyStatefulListState
class DisplayCounterAndList extends StatefulWidget{

  const DisplayCounterAndList ( {Key? key }) :
        super(key: key );

  // The createState method is used to create
  // instances of mutable widgets

  @override
  MyCounterAndListState  createState() =>
      MyCounterAndListState();

}   // End of DisplayCounterAndList


class MyCounterAndListState extends
State<DisplayCounterAndList>{

  List<String> myList = [];

  int count = 0;
  String display = " ";
  WordPair myWords = WordPair(" ", " "); //= WordPair.random();

  @override
  Widget build(BuildContext context) {

    return Column(

      children: <Widget>[       // “<Widget>s_one” =
        //   column’s widgets
        Row (
          children: <Widget>[   // row widgets
    Padding(

            padding: const EdgeInsets.all(8.0),
           child: ElevatedButton (
              onPressed: incrementCounter,
              child: const Text('Increment'),
            ),
    ),
            Text('Counter = $count'),
    Padding(

            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton (
              onPressed: decrementCounter,
              child: const Text('Decrement'),
            ),
    ),
           // Text('Counter = $count'),
            Text( display,
            ),


          ],  //  end of row widgets

        ),  // Row

        /* Note:
        *   ListView.builder(...) will not work under
        *   Column (or Row) unless its wrapped inside
        *
        *
        *   the         	                 widget.
        *   This widget allows Column (or Row) elements
        *   to expand and fill the available space,
        *   which is needed by ListView.builder(...)
        * */

        Expanded (

          child: ListView.builder(
            itemCount:   myList.length,
            itemBuilder: buildListBody,
          ), // ListView.builder

        ),  // Expanded

      ],  // end of “<Widget>s_one” (i.e. column’s
      // 					       widgets)

    );   // Column
  }



  void incrementCounter( ){
    String str;
    setState( ( ) {
      count++;
      //myList.add( 'Count =$count');
      myWords = WordPair.random();
      str = myWords.asPascalCase;
      display = str;
      myList.add(str);

    } ) ;     // setState

  }     // end of incrementCounter()
  void decrementCounter( ){
    String str;
    if(count > 0) {
      setState( ( ) {
      str = myList[myList.length-1];
      count--;
      myList.removeAt(myList.length-1);
      display = " - $str";
      //myList.add( 'Count =$count');

    }

    ) ;
    }
    else
      {
        setState( ( ) {
          str = " ";
          display = str;

        });// setState
    }

  }

  // A Function (or Method) that is
  // called from itemBuilder

  Widget buildListBody(BuildContext context, int curIndex){
    //var wordList = myList[curIndex];
    return ListTile(

      title: Text ( myList[curIndex] ),

    );
  }      // end of buildListBody(…)

} // end of MyCounterAndListState
