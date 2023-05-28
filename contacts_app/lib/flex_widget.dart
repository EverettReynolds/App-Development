import 'package:contacts_app/contacts_data.dart';
import 'contacts_view.dart';
import 'package:flutter/material.dart';


class FlexWidget extends StatefulWidget {

  const FlexWidget ({Key? key }) : super(key: key);

  @override
  State<FlexWidget>  createState() =>
      _FlexWidgetState();
}


class _FlexWidgetState extends State<FlexWidget> {

  final TextEditingController nameController =
  TextEditingController();
  final TextEditingController lastNameController =
  TextEditingController();

  final TextEditingController numberController =
  TextEditingController();

  final TextEditingController emailController =
  TextEditingController();

  final TextEditingController addressController =
  TextEditingController();

  String fullName = ' ';
  //String get fullName => "$nameController $lastNameController";

  @override
  void dispose() {
    // Cleans up the text controllers when
    // this widget is disposed
    nameController.dispose();
    numberController.dispose();
    emailController.dispose();
    lastNameController.dispose();
    addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){

    return Column (
      children: <Widget>[

        Flexible (

          child: ListView (

            shrinkWrap: false,

            children: <Widget>[


              TextField(
                controller: nameController,
                decoration: const InputDecoration(

                  labelText: 'First and Middle Names',

                  hintText: 'Enter First and Middle Name Here',
                ), // InputDecoration
              ), //  TextField
              TextField(
                controller: lastNameController,
                decoration: const InputDecoration(

                  labelText: 'Last Name',

                  hintText: 'Enter Last Name Here',
                ), // InputDecoration
              ), //  Tex
              TextField(
                keyboardType: TextInputType.number,

                controller: numberController    ,
                decoration: const InputDecoration(

                  labelText: 'Phone Number',
                  hintText: 'Enter Phone Number Here',
                ), // InputDecoration
              ),  // TextField

              TextField(
                keyboardType: TextInputType.emailAddress,

                controller: emailController    ,
                decoration: const InputDecoration(

                  labelText: 'Email',
                  hintText: 'Enter Email Address',
                ),

                // InputDecoration
              ), //  TextField
          TextField(
            keyboardType: TextInputType.streetAddress,

            controller: addressController    ,
            decoration: const InputDecoration(

              labelText: 'Address',
              hintText: 'Enter Address',
            )
          )
            ], // ListView children: <Widget>[]

          ), // Listview

        ), // Flexible
Column(
    children: <Widget>[
        Row(
          children: <Widget>[

            ElevatedButton(
              onPressed: onBtnClick,
              child: const Text('Add Contact'),
            ),
            //Text ('  Name Entered: $nameStr'),

          ],  // Row <Widget>[]
        ),

    ]
)// Row


        //  If you want to add
        //  another ListView, or class that
        //  returns a ListView, do so below:

       ,Flexible ( // 2nd Flexible

         child: DisplayContacts(

                    key: UniqueKey()
               ),

            // Note: Adding
            //      key: UniqueKey()
            //      as a parameter here
            //      causes your class to be
            //      redrawn when

            //   setState is called

        ), // end of 2nd Flexible


      ], // Column children: <Widget>[]

    ); // Column

  } // end of build()

  void onBtnClick( ){
    nameController.text;
    lastNameController.text;
    numberController.text;
    emailController.text;
    addressController.text;



    setState( ( ) {

      fullName = "${nameController.text} ${lastNameController.text}";
      myContactsList.add(
        Contact(
            fullName,
            numberController.text,
            emailController.text,
            addressController.text)
      );
    } ) ;   // setState


    // Generate Alert Dialog

    AlertDialog    alrtDialog = AlertDialog(

      content: Text(
          ' $fullName has been added'),
    );

    // Display dialog

    showDialog( context: context,

      builder: (context) {

        return alrtDialog;

      },  // builder
    );

    nameController.clear();
    lastNameController.clear();
    numberController.clear();
    emailController.clear();
    addressController.clear();
  }         // end of onBtnClick

}  // end of _FlexWidgetState class
