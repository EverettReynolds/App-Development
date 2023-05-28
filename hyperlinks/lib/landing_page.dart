
import 'package:flutter/material.dart';
import 'data_file.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatefulWidget {

  const LandingPage({Key? key}) : super(key: key);
  @override
  State<LandingPage> createState() => LandingPageState();
}
class LandingPageState extends State<LandingPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // AppBar


        body: Padding(

            padding: const EdgeInsets.all(8.0),
            child: Column(

                crossAxisAlignment:
                CrossAxisAlignment.center,

                children: <Widget>[
                  ElevatedButton(

                      onPressed: () {
                        _navToScreen1(context);
                      },
                      child: const Text(
                          "Method 1 HyperLinks")),
                  ElevatedButton(

                      onPressed: () {
                        _navToScreen2(context);
                      },
                      child: const Text("Method 2 HyperLinks"))
                ]
            )
        )
    );
  }

  void _navToScreen1(BuildContext context,) async {
    // Navigate to the second screen
    setState(() {
      Navigator.pushNamed(context,

        'hyperlink1',

      );
    });
  }
    void _navToScreen2(BuildContext context) async {
      // Navigate to the second screen
      setState(() {
        Navigator.pushNamed(context,

          'hyperlink2',

        );
      });
    }

} // end of MyApp



