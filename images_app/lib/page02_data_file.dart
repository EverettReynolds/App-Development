import 'package:flutter/material.dart';
import 'package:images_app/page03_photo_list.dart';
import 'display_file.dart';
import 'page02_photo_display.dart';

class Photo {

  final String? title;
  final String? thumbnailUrl;
  final int? id;

  Photo({
    required   this.title,
    required   this.thumbnailUrl,
    required this.id
  });

  // Factory method for parsing a received JSON
  factory Photo.fromJson(
      Map<String, dynamic> receivedJson) {
    return Photo(
      title:   receivedJson ['title'],
      thumbnailUrl:
      receivedJson ['thumbnailUrl'],
      id:
        receivedJson['id'],
    );
  }
}

var myNavRoutes = <String, WidgetBuilder>{

  'first': (context) =>  const DisplayImage(),

  'second': (context) => const PhotoDisplay(),

  'third': (context) => const PhotoListDisplay(),
};