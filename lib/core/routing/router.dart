
import 'package:flutter/material.dart';
import 'package:posty/core/routing/route_string.dart';
import '../../splash_Screen.dart';



Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case splashRoute:
      return MaterialPageRoute(builder: (_) =>  Splash());


    default:
      return null;
  }
}
