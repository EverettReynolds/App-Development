import 'package:flutter/material.dart';

class DisplayImage extends StatefulWidget {

  const DisplayImage({Key? key}) : super(key: key);
  @override
  State<DisplayImage> createState() => DisplayImageState();
}
class DisplayImageState extends State<DisplayImage> {
  @override
  Widget build(BuildContext context) {
    int index = 0;

    return Scaffold(

      appBar: AppBar(
        title: const // see page 1

        Text('Images App'),
      ), // AppBar

      body: _displayImageBody(index),

    ); // Scaffold

  } // build (…)


  Widget _displayImageBody(int index) {
    return Center(

      child: Column(

        children: <Widget>[

          Padding(

            padding: const EdgeInsets.all(8.0),

            child: Image.asset(
              "assets/images/uc.jpg",
              // width: 100.0, height: 100.0,
            ), // Image.asset
          ), // Padding

          const Text('The University Center\n',
              textScaleFactor: 1.5),
          SizedBox(

            width: 280,
            child: ElevatedButton(

              child: const Text('Page 2 Photo'),

              onPressed: () {
                index = 2;
                _navToScreen2(context, index); // Navigate To Page 2
              },

            ), // ElevatedButton

          ),
          SizedBox(

            width: 280,
            child: ElevatedButton(

              child: const Text('Page 3 Photo List'),

              onPressed: () {
                index = 3;
                _navToScreen3(context, index); // Navigate To Page 2
              },

            ), // ElevatedButton

          ), // SizedBox


        ], // <Widget>[]


      ), // Column


    ); // Center


  }

  void _navToScreen2(BuildContext context,
      int index) async {
    // Navigate to the second screen
    setState(() {
      Navigator.pushNamed(context,

          'second',

          arguments: index);
    });
  }

  void _navToScreen3(BuildContext context,
      int index) async {
    // Navigate to the second screen
    setState(() {
      Navigator.pushNamed(context,

          'third',

          arguments: index);
    });
  }

// end of _displayImageBody


// end of DisplayImage class


// --- end of display_file.dart
}
