import 'package:flutter/material.dart';
import 'first_screen.dart';
import 'second_screen.dart';

const String appTitle = 'Multi Page App' ;
const String screen1Title = '$appTitle - First Screen';
const String screen2Title = '$appTitle - Second Screen';


class Website {

  String name;
  String url;

  Website(this.name, this.url);
}

List<Website>   myWebsiteList = [

  Website( 'Go Bears', 'https://mercerbears.com'),

  Website( 'Facebook', 'https://facebook.com'),

  Website( 'IEEE', 'https://ieee.org'),

];    // myWebList



var myNavRoutes = <String, WidgetBuilder>{

  'first': (context) => const  FirstScreen(),

  'second': (context) => const SecondScreen(),
};
