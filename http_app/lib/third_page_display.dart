//       third_page_display.dart

import 'package:flutter/material.dart';
import 'third_page_data.dart';

class ThirdPageDisplay extends StatefulWidget {

  const
  ThirdPageDisplay({Key? key}) : super(key: key);

  @override
  State<ThirdPageDisplay> createState() =>
      _ThirdPageDisplayState();
}


class _ThirdPageDisplayState extends
State<ThirdPageDisplay> {

  late Future< List<ToDo> > toDoList;

  @override
  void initState() {
    super.initState();

    toDoList = fetchToDoListFromWeb();
  }

  @override
  Widget build (BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Third Page – ToDo List"),
      ),  // AppBar

      body: Padding(

        padding: const EdgeInsets.all(8.0),

        child: Center(

          child:	FutureBuilder< List<ToDo> >(

            future: toDoList,

            builder:  _page3FutureBuilderMethod,

          ),  // FutureBuilder

        ), // Center

      ), // Padding

    );  // Scaffold

  }    // build

}  // end of _ThirdPageDisplayState



Widget _page3FutureBuilderMethod(
    BuildContext                 context,
    AsyncSnapshot< List<ToDo> >  snapshot) {

  Widget futureBuilderResult;

  if (snapshot.hasData) {

    futureBuilderResult =
        _snapshotDataDisplayWidget(snapshot);

  } else if (snapshot.hasError) {

    futureBuilderResult =  Text("${snapshot.error}");

  } else {

    futureBuilderResult = const
    CircularProgressIndicator();
  }

  return futureBuilderResult;
}


Widget _snapshotDataDisplayWidget(
    AsyncSnapshot< List<ToDo> >  snapshot) {

  return ListView.builder(

    itemCount:   snapshot.data!.length,
    itemBuilder:
        (BuildContext context, int index) =>
        _toDoListItemBuilder(snapshot, index),
  );
}



Widget _toDoListItemBuilder (
    AsyncSnapshot< List<ToDo> >  snapshot, int index){

  String subTitleStr = 'Completed: '

      '${snapshot.data![index].toDoCompleted.toString()}';
  String userId = 'ID: ''${snapshot.data![index].id.toString()}\n';
String combinedWords = userId + subTitleStr;
  return ListTile(
      title: Text(snapshot.data![index].toDoTitle ),
      subtitle:Text(combinedWords) ,
  );

}	// _toDoListItemBuilder( … )


//    end of   third_page_display.dart
