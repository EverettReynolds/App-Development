//  f3_other_displays.dart

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main.dart';
class OtherDisplays extends StatefulWidget {

  const OtherDisplays ({Key? key}) : super(key: key);

  @override
  State<OtherDisplays> createState() =>
      _OtherDisplaysState();
}

class _OtherDisplaysState extends State<OtherDisplays> {

late SharedPreferences prefs;
  bool isChecked  = true;
  bool isSwitched = false;
@override
void initState(){
  super.initState();
  _loadSharedPrefs();
}
Future<void> _loadSharedPrefs() async {
   prefs =
  await SharedPreferences.getInstance();
  setState(() {
    isChecked = prefs.getBool('isChecked') ?? false;
    isSwitched = prefs.getBool('isSwitched') ?? false;

  });
  //_loadSharedPrefs();
}
void _savePrefs() async{
  prefs = await SharedPreferences.getInstance();
  await prefs.setBool('isChecked', isChecked);
  await prefs.setBool('isSwitched', isSwitched);
}
  @override
  Widget build(BuildContext context) {
    //_loadSharedPrefs();
    return Column(

      children: <Widget>[

        CheckboxListTile(   // CheckboxListTile instead of
          // Checkbox because  CheckboxListTile
          // allows us to use "title:"

          title: const Text('Setting A',
              textScaleFactor: 1.5),
          value: isChecked,
          onChanged: (newValue) {

            setState(() {
              isChecked = newValue!;
              _savePrefs();
            });
          },
          // controlAffinity:
          //              ListTileControlAffinity.leading,

        ), // CheckboxListTile

//   CONTINUE ON NEXT PAGE
        SwitchListTile(   // SwitchListTile instead of
          // Switch because SwitchListTile
          // allows us to use "title:"

          title: const Text('Setting B',
              textScaleFactor: 1.5),

          value: isSwitched,

          onChanged: (value) {

            setState(() {

              isSwitched = value;
              _savePrefs();

            });
          },
          // activeTrackColor: Colors.lightGreenAccent,
          // activeColor: Colors.green,

        ),
        ElevatedButton(

            onPressed: _resetScreen ,
            child: const Text("Reset")
        ),// SwitchListTile

      ], // <Widget>[]

    ); // Column

  }

Future<void> _resetScreen() async {
  SharedPreferences prefs =
      await SharedPreferences.getInstance();

  prefs.clear();


  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder:
        (context) => const MyHomePage( ) ),
  );

}

} // end of _OtherDisplaysState
