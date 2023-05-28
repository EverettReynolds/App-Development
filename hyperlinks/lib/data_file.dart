import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';



Widget urlText(String urlStr) {

  return GestureDetector(

    child: Text(urlStr,
      style: const TextStyle(color: Colors.blue,
          decoration:
          TextDecoration.underline ),
      textScaleFactor: 1.5,

    ), // Text

    onTap: () => _displayWebsite(urlStr),

  ); // GestureDetector

}  // urlText


void _displayWebsite (String urlStr) async{

  Uri urlUri = Uri.parse(urlStr);

  try {
    await launchUrl(urlUri);
  } catch (ex) {

    throw 'Could not launch $urlStr';
  }


}   // end of _displayWebsite(…)

// CONTINUE ON THE NEXT PAGE

Widget addressText (String addr, String addrFormat) {

  return GestureDetector(

    child: Text(addr,
      style: const TextStyle(color: Colors.blue,
          decoration:
          TextDecoration.underline ),
      textScaleFactor: 1.5,

    ), // Text

    onTap: () => _openMap(addrFormat),
  ); // GestureDetector

}   // end of addressText


_openMap (String addrFormat) {

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
}   //   end of _openMap()




Widget phoneText (String num) {
   return GestureDetector(

    child: Text(num,
      style: const TextStyle(color: Colors.blue,
          decoration:
          TextDecoration.underline ),
      textScaleFactor: 1.5,

    ), // Text

    onTap: () async {
      String numberStr = "tel:$num" ;//'tel:800-637-2378';
      Uri urlUri = Uri.parse(numberStr);

      try {
        await launchUrl(urlUri);
      } catch (ex) {
        throw 'Could not call number';
      }
    }
  ); // …
}  // phoneText



//    end of data_file.dart
