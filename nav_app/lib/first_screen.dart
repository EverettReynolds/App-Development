import 'package:flutter/material.dart';
import 'data_file.dart';

class FirstScreen extends StatefulWidget {

  const FirstScreen({Key? key}) : super(key: key);
  @override
  State<FirstScreen> createState() => FirstScreenState();
}

class FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: const Text(screen1Title)
      ), // AppBar

      body: _firstScreenBody(context),

    );
  }

  Widget _firstScreenBody(BuildContext context) {
    return ListView.builder(
      itemCount: myWebsiteList.length,
      itemBuilder: _buildListBody,
    );
  } // end of _firstScreenBody()


  Widget _buildListBody(BuildContext context, int index) {
    return ListTile(

      title: Text(myWebsiteList[index].name),

      onTap: () =>
          _navToScreen2(context,

              index),
    );
  }

  void _navToScreen2(BuildContext context,
      int websiteListIndex) async {
    // Navigate to the second screen
    setState(() {
      Navigator.pushNamed(context,

          'second',

          arguments: websiteListIndex);
    });
  }

}


    // end of FirstScreen Class

