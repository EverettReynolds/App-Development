
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {

  const LandingPage({Key? key}) : super(key: key);
  @override
  State<LandingPage> createState() => LandingPageState();
}
class LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Firebase Demo"),
      ),
      body: Padding(

      padding: const EdgeInsets.all(8.0),
      child:Align(
        alignment: Alignment.topCenter,
      child: SizedBox(
        height:100000 ,
        width:100000 ,
        child:Column(
        children:<Widget>[
          ElevatedButton(

        child: const Text('View Notes',
        textScaleFactor: 1,
        textAlign: TextAlign.center,),

        onPressed: () {
          int index = 2;
          _navToScreen2(context, index); // Navigate To Page 2
        },

      ),
          ElevatedButton(

            child: const Text('Post Hard-coded Note',
              textScaleFactor: 1,
              textAlign: TextAlign.center,),

            onPressed: () {
              int index = 3;
              _navToScreen3(context, index); // Navigate To Page 2
            },

          ),

          ElevatedButton(

            child: const Text('Post User-entered Note',
              textScaleFactor: 1,
              textAlign: TextAlign.center,),

            onPressed: () {
              int index = 4;
              _navToScreen4(context, index); // Navigate To Page 2
            },

          ),
          ElevatedButton(

              child: const Text('Fruits Vote',
                textScaleFactor: 1,
                textAlign: TextAlign.center,),

              onPressed: () {
                int index = 5;
                _navToScreen5(context, index); // Navigate To Page 2
              },
      )]
      )
      )
    )
    ));
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

  void _navToScreen4(BuildContext context,
      int index) async {
    // Navigate to the second screen
    setState(() {
      Navigator.pushNamed(context,

          'fourth',

          arguments: index);
    });
  }
  void _navToScreen5(BuildContext context,
      int index) async {
    // Navigate to the second screen
    setState(() {
      Navigator.pushNamed(context,

          'fifth',

          arguments: index);
    });
  }
}

// AppBar
