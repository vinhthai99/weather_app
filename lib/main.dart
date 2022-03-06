import 'package:flutter/material.dart';
import 'home.dart';
import 'choose_location.dart';
void main() => runApp(MaterialApp(
  initialRoute: "/",
  routes: {
    "/": (context) => Location(),
    "/home": (context) => Home(),
  },
));

