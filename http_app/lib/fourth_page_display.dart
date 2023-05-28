import 'package:flutter/material.dart';
import 'fourth_page_data.dart';

class FourthPageDisplay extends StatefulWidget {

  const
  FourthPageDisplay({Key? key}) : super(key: key);

  @override
  State<FourthPageDisplay> createState() =>
      _FourthPageDisplayState();
}


class _FourthPageDisplayState extends
State<FourthPageDisplay> {

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
        title: const Text("Fourth Page – Users List"),
      ),  // AppBar

      body: Padding(

        padding: const EdgeInsets.all(8.0),

        child: Center(

          child:	FutureBuilder< List<ToDo> >(

            future: toDoList,

            builder:  _page4FutureBuilderMethod,

          ),  // FutureBuilder

        ), // Center

      ), // Padding

    );  // Scaffold

  }    // build

}  // end of _ThirdPageDisplayState



Widget _page4FutureBuilderMethod(
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
  String userId = 'ID: ' '${snapshot.data![index].toDoId.toString()}\t\t\t\t';
  String cityName = 'City: ''${snapshot.data![index].toDoCity}\n';
  String latValue = 'latitude: ''${snapshot.data![index].toDoLat.toString()}\t\t\t\t';
  String longValue = 'longitude: ''${snapshot.data![index].toDoLong.toString()}';
String combinedWords = userId + cityName + latValue + longValue;
  return ListTile(
    title:Text(snapshot.data![index].toDoName),
    subtitle: Text(combinedWords),
  );
}	// _toDoListItemBuilder( … )


//    end of   third_page_display.dart
