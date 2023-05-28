//     f2_username_display.dart

import 'package:flutter/material.dart';
import
'package:shared_preferences/shared_preferences.dart';

class UsernameDisplay extends StatefulWidget {

  const UsernameDisplay ({Key? key}) : super(key: key);

  @override
  State<UsernameDisplay> createState() =>
      _UsernameState();
}



class _UsernameState extends State<UsernameDisplay> {

  final String _usernamePrefsKey = 'username_key';
  String _usernameDisplayStr = '';
  final myController = TextEditingController();
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }
  @override
  void initState() {
    super.initState();

    _getUsername();

  }


  _getUsername() async {

    SharedPreferences prefs =
    await SharedPreferences.getInstance();

    String usernameStr =
        prefs.getString(_usernamePrefsKey) ?? '';

    _updateUsernameDisplay(usernameStr);
  }



  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: myController,
      decoration: const InputDecoration(
      hintText: 'Enter Username',
    ),
        onEditingComplete: (){
    _saveUsername();
    //myController.clear();
    },
    ),
    ),
       Row(
    children:<Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),

          child: ElevatedButton(
            onPressed: _saveUsername,
            child: const Text('Save Username'),
          ), // RaisedButton
        ), // Padding

        Padding(
          padding: const EdgeInsets.all(8.0),

          child: Text(
              'Username: $_usernameDisplayStr',
              textScaleFactor: 1.5), // Text
        ), // Padding

      ], // <Widget>[]
    )]);// Row
  }

  Future<void> _saveUsername() async {
    SharedPreferences prefs =
    await SharedPreferences.getInstance();

    //int counterVal = prefs.getInt('counter_key') ?? 0;
    String username = myController.text;

    prefs.setString(_usernamePrefsKey, username);

    _updateUsernameDisplay(username);
  }

  void _updateUsernameDisplay(String newUsername){

    setState(() {
      _usernameDisplayStr = newUsername;
      myController.clear();
    });
  }

}  // end of _UsernameState
