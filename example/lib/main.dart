import 'package:flutter/material.dart';


void main() => runApp(const MyApp());


const String appTitle = 'Chkbx & Sw ';


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

        home: const HomePage()


    );


  }

}   // End of MyApp





// tooltip is used by Assistive technologies

// <Widgets>[ ] = a list of widgets


//  CONTINUED ON NEXT PAGE
class HomePage extends StatelessWidget {

  const  HomePage({Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        appBar: AppBar(

          leading: const IconButton(
            icon: Icon(Icons.tab_unselected_outlined),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),  // IconButton

          title: const Text(appTitle),

          actions: const <Widget>[

            IconButton(
              icon: Icon(Icons.panorama_fish_eye),
              tooltip: 'Search',
              onPressed: null,
            ), // IconButton

            IconButton(
              icon: Icon(Icons.airplanemode_active),
              tooltip: 'Home',
              onPressed: null,
            ), // IconButton

            IconButton(
              icon: Icon(Icons.library_add),
              tooltip: 'Info',
              onPressed: null,
            ), // IconButton

          ],   // <Widget>[]

        ),   //AppBar


        body:  const  DisplayCheckBox2( )
    );
  }

} // end of HomePage



class DisplayCheckBox2 extends StatefulWidget{

  const  DisplayCheckBox2 ({Key? key }) : super(key: key);


  @override
  MyCheckBoxState   createState() =>  MyCheckBoxState();


// The createState method will be used to create instances of
// mutable widgets


}   // End of DisplayCheckBox2


// CONTINUE ON THE NEXT PAGE


class MyCheckBoxState extends State<DisplayCheckBox2>{

  MyCheckBoxState ({Key? key });

  bool?  checkBoxValue = false;
  bool   switchValue   = true;

  @override
  Widget build(BuildContext context) {

    /* return Center(
        child: Checkbox(
          value:     checkBoxValue,
          onChanged: onChkBox2Clicked,
        )
    ); */
    return ListView(

      padding:
      const EdgeInsets.only(left:150, right: 150),

      children: <Widget>[

        Checkbox(
          value:     checkBoxValue,
          onChanged: onChkBoxClicked,
        ), // Checkbox

        // NOTE: checkBoxValue and
        //       onChkBoxClicked should only be
        //	    used by the checkbox

        // Add Switch here,
        Switch(
          value: switchValue,
          onChanged: onSwitchClicked,
        )
      ],  // <Widget>[]

    );	// end of ListView


  }  // end of MYch



  void onChkBoxClicked(bool? newValue){

    setState( ( ) {
      checkBoxValue = newValue;
    });
  }        // end of onChkBox2Clicked
  void onSwitchClicked(bool newValue){

    setState( ( ) {
      switchValue = newValue;
    });
  }        // end of onChkBox2Clicked
} // end of MyCheckBoxState
