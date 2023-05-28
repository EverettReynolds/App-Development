import 'dart:js_util';
import 'package:firebaseapp/login_signup_page.dart';
import 'package:firebaseapp/p0_after_login.dart';
import 'package:firebaseapp/p2_database_post.dart';
import 'package:firebaseapp/p3_textfields_post.dart';
import 'package:firebaseapp/p4_votes_display.dart';
import 'package:flutter/material.dart';
import 'package:firebaseapp/landing_page.dart';
import 'package:firebaseapp/main.dart';
import 'package:firebaseapp/p1_database_display.dart';
import 'package:firebaseapp/login_signup_page.dart';
import 'package:firebaseapp/p0_after_login.dart';


var myNavRoutes = <String, WidgetBuilder>{

  'first':(context) => const LandingPage(),

  'second': (context) => const DatabaseDisplay1(),

  'third': (context) => const DatabasePost(),

  'fourth':(context) => const TextFieldsPost(),

  'fifth':(context) => const VotesDisplay(),
};