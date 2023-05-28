import 'package:flutter/material.dart';
import 'data_file.dart';
import 'package:url_launcher/url_launcher.dart';

void _popScreen2(BuildContext context) {
  Navigator.pop (context);
}

class SecondScreen extends StatefulWidget {

  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => SecondScreenState();
}

class SecondScreenState extends State<SecondScreen> {

  final TextEditingController userInputController =
  TextEditingController();

  final TextEditingController numberController =
  TextEditingController();

  String userInputStr = ' ';

  @override
  void dispose() {
    // Cleans up the text controllers when
    // this widget is disposed

    userInputController.dispose();

    numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Use the ModalRoute.of() method to extract the
    // argument that is passed from the
    // previous screen, and cast this argument as an int


    final dataFromScreen1 =
    ModalRoute
        .of(context)!
        .settings
        .arguments as int;

    return Scaffold(

      appBar: AppBar(title: const Text(screen2Title)
      ), // AppBar

      body: _secondScreenBody(context, dataFromScreen1),

    );
  }


//   CONTINUE ON NEXT PAGE

  Widget _secondScreenBody(BuildContext context,
      int prevScreenData) {
    return Padding(

      padding: const EdgeInsets.all(16.0),

      child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[

          _firstRow(context, prevScreenData),
//insert buttons here
          //_displayBoxes(context,prevScreenData),
            TextField(
              keyboardType: TextInputType.name,
              controller: userInputController,
              decoration: const InputDecoration(

                labelText: 'Name',

                hintText: 'Enter Name Here',
              ), // InputDecoration
            ), //  TextField

            TextField(
              keyboardType: TextInputType.url,

              controller: numberController,
              decoration: const InputDecoration(

                labelText: 'URL',
                hintText: 'Enter URL Here',
              ), // InputDecoration
            ), // TextField

            Row(
              children: <Widget>[

                ElevatedButton(
                  onPressed: onBtnClick,
                  child: const Text('Add data to\nScreen 1 List'),
                ),

                // Text('  You typed: $userInputStr '),

              ], // Row <Widget>[]
            ), // Row
            // Column <Widget>[]
            // Second Row
            ElevatedButton(
              child: const Text('  Go Back       '),
              onPressed: () => _popScreen2(context),
            ), // ElevatedButton

          ] // <Widget> []

      ), // Column

    );
  } // end of _secondScreenBody()


// CONTINUE ON NEXT PAGE

  Widget _firstRow(BuildContext context,
      int indxFromPrevScreen) {
    String websiteName =
        myWebsiteList[ indxFromPrevScreen ].name;

    return Row(

      children: <Widget>[

        ElevatedButton(
          child: const Text('    Browse to     '),
          onPressed: () {
            // do something here
            _displayWebsite(context, indxFromPrevScreen);
          },
        ), // ElevatedButton

        Text('  $websiteName                 '),

      ], // <Widget>[]

    );
  } // end of _firstRow( ... )


  _displayWebsite(BuildContext context,
      int indx) async {
    String urlStr = myWebsiteList[ indx ].url;
    Uri urlUri = Uri.parse(urlStr);

    try {
      await launchUrl(urlUri);
    } catch (ex) {
      // Display an alert dialog here

      throw 'Could not launch $urlStr             ';
    }
  } // end of _displayWebsite
  /*_displayBoxes(BuildContext context,
      int indxFromPrevScreen) {
    return Column(

      children: <Widget>[

        TextField(
          keyboardType: TextInputType.name,
          controller: userInputController,
          decoration: const InputDecoration(

            labelText: 'Name',

            hintText: 'Enter Name Here',
          ), // InputDecoration
        ), //  TextField

        TextField(
          keyboardType: TextInputType.url,

          controller: numberController,
          decoration: const InputDecoration(

            labelText: 'URL',
            hintText: 'Enter URL Here',
          ), // InputDecoration
        ), // TextField

        Row(
          children: <Widget>[

            ElevatedButton(
              onPressed: onBtnClick,
              child: const Text('Add data to\nScreen 1 List'),
            ),

           // Text('  You typed: $userInputStr '),

          ], // Row <Widget>[]
        ), // Row

      ], // Column <Widget>[]

    ); // Column

  }*/

  void onBtnClick() {
    setState(() {
      String txtInp1 = userInputController.text;
      String txtInp2 = numberController.text;
      Website newWeb = Website( txtInp1, txtInp2);
      myWebsiteList.add(newWeb);
      Navigator.pop (context);
    });
  }

    }
    // end of _displayWebsite

