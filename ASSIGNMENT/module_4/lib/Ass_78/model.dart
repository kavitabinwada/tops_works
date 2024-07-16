import 'package:flutter/material.dart';

class User {
  String? name, email, contact;
  var uuid;

  User(
      {required this.name,
      required this.email,
      required this.contact,
      required this.uuid});
}
