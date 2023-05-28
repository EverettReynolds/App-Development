import 'package:flutter/material.dart';


class MyTextInput extends StatefulWidget {

  const MyTextInput({Key? key }) : super(key: key);

  @override
  State<MyTextInput> createState() => _TxtInputState();
}


class _TxtInputState extends State<MyTextInput> {

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


// CONTINUE ON NEXT PAGE
  @override
  Widget build(BuildContext context) {

    return Column(

      children: <Widget>[

        TextField(
          controller: userInputController,
          decoration: const InputDecoration(
            labelText: 'User Input',
            hintText: 'Enter Text Here',
          ), // InputDecoration
        ), // TextField

        TextField(
          keyboardType: TextInputType.number,

          controller: numberController,
          decoration: const InputDecoration(

            labelText: 'User Number',
            hintText: 'Enter a Number',
          ), // InputDecoration
        ),     // TextField

        Row(
          children: <Widget>[

            ElevatedButton(
              onPressed: onBtnClick,
              child: const Text('Click here'),
            ),

            Text ('  You typed: $userInputStr '),

          ],  // Row <Widget>[]
        ),    // Row

      ],  // Column <Widget>[]

    );   // Column

  }      // end of build ()

  void onBtnClick( ){

    setState( ( ) {

      String txtInp1 = userInputController.text;
      String txtInp2 = numberController.text;

      userInputStr = '$txtInp1 and $txtInp2';

    } ) ;   // setState


    // Generate Alert Dialog

    AlertDialog    alrtDialog = AlertDialog(

      content: Text(
          'Number = ${numberController.text} '),
    );

    // Display dialog

    showDialog( context: context,

      builder: (context) {

        return alrtDialog;

      },  // builder
    );

  }         // end of onBtnClick

}  // end of _TxtInputState

