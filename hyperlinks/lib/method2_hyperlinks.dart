
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

import 'package:hyperlinks/data_file.dart';

import 'package:flutter/gestures.dart';

const String _appTitle = 'Method 2 Hyperlinks';

class Method2Display extends StatelessWidget {

  const Method2Display ({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context) {

    return  Scaffold(

      appBar: AppBar(
        title: const Text(_appTitle),
      ), // AppBar

      body: Padding(

        padding: const EdgeInsets.all(8.0),

        child: ListView(

          children: <Widget>[

            // First and second paragraphs
            _paragraphs1and2(),

            _paragraph3(),      // Third paragraph

            _paragraph4(),
            // You can add other widgets here
          ],  // <Widget>[]

        ), //  ListView

      ), // Padding
    );   // Scaffold
  }
}  // end of Method2Display

// CONTINUE ON THE NEXT PAGE
RichText _paragraphs1and2 (){

  return RichText (

    text:  TextSpan(

      style: const TextStyle(color:
      Colors.black),
      children: <TextSpan>[

        // Paragraph 1
        const TextSpan(
          text: "Welcome to ",
        ),  // TextSpan

        TextSpan(
          text: "Mercer University ",
          style: const TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            decoration:
            TextDecoration.underline,
          ),  // TextStyle

          recognizer: TapGestureRecognizer()
            ..onTap = () =>
                _displayWebsite ("https://mercer.edu"),

        ),    // TextSpan

        const TextSpan(
          text:
          "where students from all over the "
              "world discover a college experience "
              "that fits their unique needs, "
              "interests and goals.",
        ),  // TextSpan

        _paragraph2(),     // Paragraph 2

      ],  // <TextSpan>[]

    ),   // TextSpan
  );   // RichText
}      // end of _paragraghs1and2()

// CONTINUE ON THE NEXT PAGE
void _displayWebsite (String urlStr) async {
  Uri urlUri = Uri.parse(urlStr);
  try {
    await launchUrl(urlUri);
  } catch (ex) {
    throw 'Could not launch $urlStr';
  }
}


TextSpan   _paragraph2 (){

  return const TextSpan(

    text: "\nFrom school colors to annual events, "
        "Mercer is packed with proud traditions that "
        "have made the University what it is today.",
  );
}    // end of _paragraph2()



// CONTINUE ON THE NEXT PAGE



RichText _paragraph3 (){

  // Third paragraph
  return RichText(

    text: const TextSpan(

        style: TextStyle(color: Colors.black),

        children: <TextSpan>[

          TextSpan(
            text:
            "\nMercer University was founded in "
                "1833 in Penfield by Georgia Baptists. "
                "The school, under the leadership of "
                "Baptist minister and spiritual father "
                "Adiel Sherwood, was named for "
                "Jesse Mercer, a prominent Baptist "
                "leader and the first chair of "
                "the Mercer Board of Trustees. ",
          ),  // TextSpan

        ]     // <TextSpan>[]

    ),        // TextSpan

  );

}    // end of _paragraph3()

RichText _paragraph4()
{
  return RichText(
      text:  TextSpan(

          style: const TextStyle(color: Colors.black),

          children: <TextSpan>[

      const TextSpan(
      text:("\nMercer has four major campuses:the historic")


  ),
            TextSpan(
              text: "(main website)",
            style: const TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
          decoration:
          TextDecoration.underline,
  ),  // TextStyle

       recognizer: TapGestureRecognizer()
        ..onTap = () =>
        _displayWebsite ("https://mercer.edu"),

  ),    // TextSpan
            TextSpan(
              text: "(main address)",
              style: const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                decoration:
                TextDecoration.underline,
              ),  // TextStyle

              recognizer: TapGestureRecognizer()
                ..onTap = () =>
                    _openMap("1501+Mercer+University+Dr,+Macon,+GA+31207"),

            ),
            TextSpan(
              text: "(main phone number)",
              style: const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                decoration:
                TextDecoration.underline,
              ),  // TextStyle

              recognizer: TapGestureRecognizer()
                ..onTap = () =>
                    _displayNum("478-301-2700"),

            ),

            const TextSpan(
              text:  "campus in Macon, a graduate and professional campus in Atlanta,and four-year campuses of the School of Medicine in Savannah and Columbus.Mercer also has regional academic centers in Henry County and Douglas County;the Mercer University School of Law on its own campus in Macon;teaching hospitals in Macon, Savannah, and Columbus;a university press and a performing arts center,the Grand Opera House, in Macon; and the Mercer Engineering Research Centerin Warner Robins.The Mercer University Health Sciences Center encompasses Mercer's medical,pharmacy, nursing, and health professions programs in Macon, Atlanta, Savannah,and Columbus."
)

          ]));
}

void _displayNum(String num) async {
  String numberStr = "tel:$num"; //'tel:800-637-2378';
  Uri urlUri = Uri.parse(numberStr);

  try {
    await launchUrl(urlUri);
  } catch (ex) {
    throw 'Could not call number';
  }
}
void _openMap(String addrFormat)
{
  String urlStr;

  if (Platform.isIOS){
    urlStr =
    'http://maps.apple.com/?address=$addrFormat';
  } else {     // Platform.isAndroid
    urlStr =
    'https://www.google.com/maps/search/?api=1&query='

        '$addrFormat';
  }
  _displayWebsite(urlStr);
}
