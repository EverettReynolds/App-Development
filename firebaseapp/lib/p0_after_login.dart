import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AfterLoginDisplay extends StatelessWidget {

  const AfterLoginDisplay ({Key? key,
    required this.auth,
    required this.fbUser }) :
        super(key: key);
  final FirebaseAuth auth;
  final User         fbUser;

  @override
  Widget build(BuildContext context) {

    return _afterLoginPageBody(context);

  }

  Widget  _afterLoginPageBody (BuildContext  context) {

    return Column(

      crossAxisAlignment: CrossAxisAlignment.stretch,

      children: <Widget>[

        Padding (

          padding: const EdgeInsets.all(8.0),

          child: ElevatedButton(
            child:  const Text("View Notes"),

            onPressed:  () {
              Navigator.pushNamed(context,
                  'view_notes_screen');
            },
          ), // ElevatedButton

        ),  // Padding

//  CONTINUE ON NEXT PAGE

        Padding (
          padding: const EdgeInsets.fromLTRB(8.0, 0.0,
              8.0, 8.0),
          child: ElevatedButton(
            child:  const Text("Post Hard-coded Note"),
            onPressed:  () {
              // Go to "Mercer/Send Money Page"
            },
          ), // ElevatedButton
        ),  // Padding


        Padding (
          padding: const EdgeInsets.fromLTRB(8.0, 0.0,
              8.0, 8.0),
          child: ElevatedButton(
            child:  const Text("Post User-entered Note"),
            onPressed:  () {
              // Go to the page that has
              // two TextFields
            },
          ), // ElevatedButton
        ),  // Padding


        Padding (
          padding: const EdgeInsets.fromLTRB(8.0, 0.0,
              8.0, 8.0),
          child: ElevatedButton(
            child:  const Text("Fruits Vote"),
            onPressed:  () {
              // Go to the Fruits vote page
            },
          ), // ElevatedButton
        ),  // Padding

      ],    // <Widget>[]

    );  // return

  }    // end of _afterLoginPageBody()

}   // end of AfterLoginPage Class

// -------  End of p0_after_login.dart ------
