
/*
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'data_file.dart';

class MyListDisplay extends StatelessWidget {

  const MyListDisplay ({Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {


    return ListView.builder(
      itemCount:   miscOrgsList.length,
      itemBuilder:  _buildListBody,
    );
  }

  Widget _buildListBody (BuildContext context,
      int index ) {
    return ElevatedButton(

      onPressed: ( ) {
        _displayWebsite(context, index);
      },

      child: Text(miscOrgsList[index].orgName),

    ); // ElevatedButton
  }


// Continued on the next page

  _displayWebsite(context, index) async {

    String urlStr = miscOrgsList[index].orgUrl;
    Uri urlUri = Uri.parse(urlStr);

    // Uri.parse converts strings into URIs.
    // Uniform Resource Identifier (URI), a
    // character string that helps in identifying
    // a resource on the Internet

    if(await canLaunchUrl(urlUri)) {

      try {
        await launchUrl(urlUri);
      } catch (ex) {

        // Display an alert dialog here

        throw 'Could not launch $urlStr';
      }
    } else {
      // Display an alert dialog here
      AlertDialog    alrtDialog = AlertDialog(

        content: Text(
            "$urlStr could not be displayed."),
      );

      // Display dialog

      showDialog( context: context,

        builder: (context) {

          return alrtDialog;

        },  // builder
      );
    }
  }    // end of _displayWebsite

}  */// end of MyListDisplay


import 'package:flutter/material.dart';
import 'data_file.dart';

class MyListDisplay extends StatelessWidget{

  const MyListDisplay ({Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GridView.builder(
      gridDelegate:
      const SliverGridDelegateWithFixedCrossAxisCount(

        /*
      gridDelegate controls the layout of the
      children within the GridView.

      SliverGridDelegateWithFixedCrossAxisCount
      creates grid layouts with a fixed number of
      tiles in the cross axis.
   */

        crossAxisCount: 2,
        mainAxisSpacing:  5,
        crossAxisSpacing: 5,
      ),

      itemCount:  dataList.length,
      itemBuilder:  _buildListBody,
    );
  }

  Widget _buildListBody( BuildContext context,
      int index )
  {
    //int length = miscOrgsList[index];
    return ElevatedButton(
      onPressed: ( ) {_onContactTapped( context,
          index )
      ;},

      child: Text(dataList[index]),
    );
  }
  void _onContactTapped(  BuildContext context,
      int index){
    String content = "Country: ${miscOrgsList[index].name}\t\t\t\tCapital: ${miscOrgsList[index].capital}";
    ScaffoldMessenger.of(context)
        .showSnackBar( SnackBar (

      content:Text(

          content),
    ) // SnackBar
    );  // showSnackBar
  }
}  // end of MyListDisplay
