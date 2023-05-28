/*import 'package:flutter/material.dart';
import 'contacts_view.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  final String appTitle = 'Contacts';

  @override
  Widget build(BuildContext context) {

   return MaterialApp(

        debugShowCheckedModeBanner: false,

        title: appTitle,

        home: Scaffold(

          appBar: AppBar( title: Text(appTitle) ),


          body:  const DisplayContacts( ),

        ) // Scaffold

    );   // MaterialApp
  }

}   // End of MyApp
*/


import 'package:contacts_app/contacts_view.dart';
import 'package:flutter/material.dart';

import 'textfield_demo.dart';

import 'flex_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  final String appTitle = 'Contacts' ;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

        debugShowCheckedModeBanner: false,

        title: appTitle,

        home: Scaffold(

          appBar: AppBar( title: Text(appTitle) ),


          body:  const FlexWidget( ),

        ),

      // Scaffold
    );
   // MaterialApp
  }

}   // End of MyApp

