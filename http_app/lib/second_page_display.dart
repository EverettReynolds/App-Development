import 'package:flutter/material.dart';
import 'second_page_data.dart';

class SecondPageDisplay extends StatefulWidget {

  const
  SecondPageDisplay({Key? key}) : super(key: key);

  @override
  State<SecondPageDisplay> createState() =>
      _SecondPageDisplayState();
}

class _SecondPageDisplayState extends
State<SecondPageDisplay> {

  late Widget               _page2DisplayWidget;
  late Future<User>   _page2DataFromWeb;

  @override
  void initState() {
    super.initState();

    _page2DisplayWidget = const Text('Page 2');
  }

  @override
  Widget build (BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("Second Page – User Info"),
      ),  // AppBar

      body: Padding(

        padding: const EdgeInsets.all(8.0),

        child: Center(
          child:_page2DisplayWidget,
        ), // Center
      ), // Padding

      bottomNavigationBar: Padding(

        padding: const EdgeInsets.all(8.0),

        child: ElevatedButton(

            child: const Text("Fetch User Info"),

            onPressed: () => _onBtnPressed(context)

        ),  // ElevatedButton

      ),    // Padding

    );  // Scaffold

  }    // build


  void _onBtnPressed(BuildContext context) {

    setState(() {

      _page2DataFromWeb   =   fetchUserInfoFromWeb( );

      _page2DisplayWidget = _page2FutureBuilder(context);

    });

  }


  Widget _page2FutureBuilder (BuildContext context){

    return FutureBuilder<User>(

      future: _page2DataFromWeb,

      builder:  _page2FutureBuilderMethod,

    );

  }

  Widget _page2FutureBuilderMethod(
      BuildContext        context,
      AsyncSnapshot<User>  snapshot) {

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
      AsyncSnapshot<User>  snapshot) {

    String userInfo =

        'Name:${snapshot.data!.fullName}'
        '\nCity:${snapshot.data!.cityName}'
        '\nCompany Name:${snapshot.data!.companyName}';


    return Text(userInfo);
  }

}  // end of _SecondPageDisplayState
