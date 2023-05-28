import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http_app/second_page_display.dart';
import 'package:http_app/third_page_display.dart';
import 'display_widget.dart';
import 'fourth_page_display.dart';


var myNavRoutes = <String, WidgetBuilder>{

  'first': (context) => const  DisplayPost(),

  'second'   : (context) => const SecondPageDisplay(),
  'third':(context)=> const ThirdPageDisplay(),
  'fourth':(context)=> const FourthPageDisplay(),
};

class Post {
  final int postUserId;
  final int postId;
  final String postTitle;
  final String postBody;

  const Post({
    required this.postUserId,
    required this.postId,
    required this.postTitle,
    required this.postBody,
  });

/*
Post.fromJson (below) is a factory method that is used
to parse (or convert) a JSON (received from a server) into a Post object (class).

The factory keyword is used when implementing a constructor that returns an existing instance instead of creating a new instance of its class.
*/

  factory Post.fromJson(Map<String, dynamic>
  receivedJson) {
    return Post(

      postUserId: receivedJson['userId'],
      postId: receivedJson['id'],
      postTitle:  receivedJson['title'],
        postBody: receivedJson['body']
    );
  }    // end of Post.fromJson( … ) method

}   // end of Post class.

/*
The fetchPostDataFromWeb ( ) method below returns a

Future  <Post> object because it makes a network request (http.get) which doesn’t respond value immediately, due to network processes.

Future objects (or futures) represent the results of asynchronous operations to be completed later.

To suspend execution until a future completes, use the  await keyword in an async function.
*/

Future<Post> fetchPostDataFromWeb() async {

  String dataURL =
      'https://jsonplaceholder.typicode.com/posts/2';

// make a HTTP network call (or request)

  final response =
  await http.get( Uri.parse( dataURL ) );

// if the server returns an OK status code

  if (response.statusCode == 200) {

// Retrieve JSON that was
// sent by the server

    var  jsonFromServer = jsonDecode(response.body);

// Use Post.fromJson() method to
// parse (convert) the received JSON into
// a new Post object

    var  newPostObject =
    Post.fromJson( jsonFromServer );


    return newPostObject;

  }

// CONTINUE ON THE NEXT PAGE

// else, if the server does NOT return an
// OK status code

  else {

    throw Exception('Failed to fetch data');

  }

}		// end of fetchPostDataFromWeb() method



// ------------- End of data_file.dart ---------------
