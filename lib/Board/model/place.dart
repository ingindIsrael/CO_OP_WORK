import 'package:flutter/material.dart';
import 'package:coopwork/User/model/user.dart';

class Place {
  String id;
  String name;
  String description;
  String uriImage;
  int likes;
  //User userOwner;
  bool liked;

  Place({
    Key key,
    @required this.name,
    @required this.description,
    this.uriImage,
    //@required this.userOwner,
    this.likes,
    this.id,
    this.liked = false
  });

}