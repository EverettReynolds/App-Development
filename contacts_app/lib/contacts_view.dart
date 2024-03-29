import 'package:flutter/material.dart';
import 'contacts_data.dart';


class DisplayContacts extends StatefulWidget{

  const DisplayContacts( { super.key } );

  @override
  State<DisplayContacts>  createState() =>
      _ContactsState();

}   // End of DisplayContacts


class _ContactsState extends State<DisplayContacts>{


  final List<Contact> _listOfContacts =
      myContactsList;

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount:   _listOfContacts.length,
      itemBuilder:  _buildListBody,
    );
  }

  Widget _buildListBody(   BuildContext context,
      int index  ) {

    return ListTile(

      leading: CircleAvatar(
          child: Text(
              _listOfContacts[index].fullName[0]  )
      ),  // CircleAvatar

      title: Text(
          _listOfContacts[index].fullName ),

      subtitle: Text(
          _listOfContacts[index].address ),

      onTap: ( ) =>
          _onContactTapped( context,
              _listOfContacts[index] ),
    );
  }

  void _onContactTapped(  BuildContext context,
      Contact tappedContact){
    String content = "${tappedContact.fullName}\n${tappedContact.phone}\n${tappedContact.email}";
    ScaffoldMessenger.of(context)
        .showSnackBar( SnackBar (

      content:Text(

          content),
    ) // SnackBar
    );  // showSnackBar
  }

}  // end of _ContactsState
