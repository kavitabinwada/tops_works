import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Data {
  AssetImage image;
  String text;
  double rating;
  double price;

  Data(
      {required this.image,
      required this.text,
      required this.rating,
      required this.price});
}
