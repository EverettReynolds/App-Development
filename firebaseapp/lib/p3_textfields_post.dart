
//     p3_textfields_post.dart


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'data_model.dart';



class TextFieldsPost extends StatefulWidget {

  const TextFieldsPost ({Key? key}) : super(key: key);

  @override
  State<TextFieldsPost> createState() =>
      _TextFieldsPostState();
}

class _TextFieldsPostState extends State<TextFieldsPost> {

  final mainReference = FirebaseFirestore.instance
      .collection('notes').doc();

  String info = '';
  final myController1 = TextEditingController();
  final myController2 = TextEditingController();
  late FocusNode focusNode;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController1.dispose();
    myController2.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    focusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Database Post Page 2'),
      ), // AppBar

      body: GestureDetector( // required to dismiss the
        //  keyboard when the user
        // cancels a text field entry by
        // tapping outside the keyboard

        onTap: () { // this dismisses the keyboard
          FocusScope.of(context)
              .requestFocus(FocusNode());
        },

        child: Padding(

          padding: const EdgeInsets.all(8.0),

          child: ListView(

            children: <Widget>[

              // Add text fields here,
              TextField(
                controller: myController1,
                focusNode: focusNode,
                onTap: showKeyboard,
                decoration: const InputDecoration(
                  hintText: 'Enter title',


                ),
              ),
              TextField(
                controller: myController2,
                focusNode: focusNode,
                onTap: showKeyboard,
                decoration: const InputDecoration(
                  hintText: 'Enter todo',
                ),

              ),
              ElevatedButton(
                onPressed: _postEntry,
                child: const Text(
                    'Submit TextField Entries to Firebase'),
              ),
               ElevatedButton(
                onPressed: _clearEntry,
                child: const Text(
                    'Clear Entries'),
              ), // ElevatedButton

              Text(info,
                  textScaleFactor: 1.5),

            ], // <Widget>[]

          ), // ListView

        ), // Padding

      ), // GestureDetector

    ); // Scaffold

  }
  void _clearEntry() {


    info = "";
    focusNode.unfocus();
    myController1.clear();
    myController2.clear();
  } // end of _TextFieldsPostState
  void showKeyboard() {
    focusNode.requestFocus();
  }

  void dismissKeyboard() {
    focusNode.unfocus();
  }

  void _postEntry() {
    NoteEntry entry = NoteEntry(myController1.text, myController2.text);
    if (myController1.text.isEmpty) {
      setState(() {
        info = 'No Entry Was Submitted';
      });
    }
    if (myController2.text.isEmpty) {
      setState(() {
        info = 'No Entry Was Submitted';
      });
    }
    else {
      mainReference.set(entry.toJson());

      setState(() {
        info = 'Posted "${entry.noteTitle}"'
            ' / '
            '"${entry.noteTodo}"';
      });

      // Update Firebase and info here

    }

    // Update Firebase and info here
  }




}

