import 'package:flutter/material.dart';
import 'data_file.dart';


class DisplayPost extends StatefulWidget {

  const
  DisplayPost({Key? key}) : super(key: key);

  @override
  State<DisplayPost> createState() =>
      _DisplayPostState();
}

class _DisplayPostState extends State<DisplayPost> {

  late Future<Post> postDataFromWeb;

  // late means that a variable will be initialized
  // later, i.e. when the
  // variable is accessed.

  @override
  void initState() {

    // initState() is called only once.
    // It is used for one time initializations.

    super.initState();

    postDataFromWeb = fetchPostDataFromWeb();
  }  // end of initState()

  @override
  Widget build (BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const              // see page 3

        Text(' Fetch Data From Web'),
      ),  // AppBar

      body: FutureBuilder<Post>(

        future:  	postDataFromWeb,
        builder:  _futureBuilderDisplayMethod,

      ),   // FutureBuilder
    );             // Scaffold

  }        // build (…)

  Widget _futureBuilderDisplayMethod(
      BuildContext         context,
      AsyncSnapshot<Post>  snapshot) {
    /*
     AsyncSnapshot = representation of the most recent
     interaction with an  asynchronous computation.
    */
    Widget displayedWidget;

    if (snapshot.hasData) {
      displayedWidget =
          _snapshotDataDisplayWidget(snapshot);

    } else if (snapshot.hasError) {
      displayedWidget =  Text("${snapshot.error}");

    } else {
      displayedWidget = const
      CircularProgressIndicator();
    }

    return displayedWidget;

  }  // end of _futureBuilderDisplayMethod

  Widget _snapshotDataDisplayWidget(
      AsyncSnapshot<Post> snapshot) {

    int    userID = snapshot.data!.postUserId;

    // snapshot.data! = we are sure that snapshot.data is
    //                  never null

    String userIDStr = userID.toString();
    int    id = snapshot.data!.postId;
    String idStr = id.toString();

    String theTitle = snapshot.data!.postTitle;

    String theBody = snapshot.data!.postBody;
    String pg2 = "Go to Page 2";
    String pg3 = "Go to Page 3";
    String pg4 = "Go to Page 4";
    return Padding(

      padding: const EdgeInsets.all(8.0),

      child: Column(

        crossAxisAlignment:
        CrossAxisAlignment.start,

        children: <Widget>[
          Text('Title: $theTitle'),
          Text('User ID: $userIDStr'),
          Text('ID: $idStr\n'),
          Text('Body:\n $theBody'),
          ElevatedButton(
            child:  Text(pg2),

            onPressed:  () => _navToScreen2(context),
          ),
          ElevatedButton(
            child:  Text(pg3),

            onPressed:  () => _navToScreen3(context),
          ),
          ElevatedButton(
            child:  Text(pg4),

            onPressed:  () => _navToScreen4(context),
          ),// ElevatedButton

        ],  // <Widget>[]

      ), // Column

    ); // Padding

  }   // end of snapshotDataDisplayWidget
  void _navToScreen2(BuildContext context) {

    // Navigate to the second screen by using a named route.


    Navigator.pushNamed(context, 'second');

  }

  void _navToScreen3(BuildContext context) {

    // Navigate to the second screen by using a named route.


    Navigator.pushNamed(context, 'third');

  }

  void _navToScreen4(BuildContext context) {

    // Navigate to the second screen by using a named route.


    Navigator.pushNamed(context, 'fourth');

  }// end of  _navToScreen2

} //  end of _DisplayPostState class



