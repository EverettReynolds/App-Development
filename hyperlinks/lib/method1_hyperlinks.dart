//      method1_hyperlinks.dart

import 'package:flutter/material.dart';
import 'data_file.dart';
import 'package:url_launcher/url_launcher.dart';

class Method1Display extends StatelessWidget {

  const Method1Display ({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context) {

    return  Scaffold(

        appBar: AppBar(
          title: const Text("Method 1 Hyperlinks"),
        ), // AppBar

        body: SingleChildScrollView(

    child:
        Padding (

      padding: const EdgeInsets.all(8.0),

      child: Column(

        crossAxisAlignment:
        CrossAxisAlignment.start,

        children: <Widget>[

          const Text('Mercer University' ,
            textScaleFactor: 1.5,
            style: TextStyle(
              fontSize: 14.0, // Adjust the font size as desired
              color: Colors.blue, // Use the same color as before
              decoration: TextDecoration.underline,
            ),),



          urlText('https://www.mercer.edu/'),




          addressText(
              "1501 Mercer University Dr,\n"
                  "Macon, GA 31207\n",
              "1501+Mercer+University+Dr,+Macon,+GA+31207"),

// CONTINUE ON THE NEXT PAGE

          ElevatedButton(

            child: const Text('Call Mercer',
                textScaleFactor: 1.5,
                style: TextStyle(fontSize: 16.0, color: Colors.white)),

            onPressed: ( ) async {

              String numberStr = 'tel:800-637-2378';
              Uri urlUri = Uri.parse(numberStr);

              try {
                await launchUrl(urlUri);
              } catch (ex) {
                throw 'Could not call number';
              }

            }, // onPressed

          ), // ElevatedButton
          const Text('\nSch. of Engineering' ,
            textScaleFactor: 1.5,
            style: TextStyle(
              fontSize: 14.0, // Adjust the font size as desired
              color: Colors.blue, // Use the same color as before
              decoration: TextDecoration.underline,
            ),),

          addressText(
              "1200 Prince St.\n"
                  "Macon, GA 31207",
              "1200+Prince+St,+Macon,+GA+31207"),

          urlText('https://www.engineering.mercer.edu/'),


          phoneText("478-301-2012"),

          const Text('\nGoogle (Macon Headquarters)' ,
            textScaleFactor: 1.5,
            style: TextStyle(
              fontSize: 14.0, // Adjust the font size as desired
              color: Colors.blue, // Use the same color as before
              decoration: TextDecoration.underline,
            ),),

          addressText(
              "1001 Fake St.\n"
                  "Macon, GA 31207",
              "1501+Mercer+University+Dr,+Macon,+GA+31207"),

          urlText('https://www.google.com/'),


          phoneText("123-456-6789"),


        ], // <Widget>[]

      ), // Column,

    )
    ));  // Padding
  }

}  // end of Method1Display


//   end of method1_hyperlinks.dart
