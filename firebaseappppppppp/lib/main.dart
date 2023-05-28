//     main.dart
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'p1_database_display.dart';

const String _appTitle = 'Firebase Demo' ;


void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

    // use options only if your device is Chrome (web)
    // Get options values from
    // web/index.html's Firebase <script> ... </script>
/*
    options: const FirebaseOptions(
                      apiKey:    ' Your API key here ',
                      projectId: ' Your project ID here',
            messagingSenderId:
                    '  Your messaging Sender Id here  ',
                      appId:      '  Your appId here  ',
    ), // FirebaseOptions
*/
  );

  runApp(const MyApp());

}  // main


// CONTINUE ON NEXT PAGE
class MyApp extends StatelessWidget {

  const MyApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: _appTitle,

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: const     DatabaseDisplay1  ( ),

    );

  }

}

// end of main.dart
