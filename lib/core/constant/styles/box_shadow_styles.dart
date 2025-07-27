import 'package:flutter/material.dart';


class AppStyles {
  static const BoxShadow boxShadow12blur2spread4Y = BoxShadow(
    offset: Offset(0, 4),
    blurRadius: 12,
    spreadRadius: 2,
    color:Colors.black12,
  );

  static const BoxShadow boxShadow12blur2spread2Y = BoxShadow(
    offset: Offset(0, 2),
    blurRadius: 10,
    spreadRadius: 1,
    //  blurStyle: BlurStyle.solid,
    color:Colors.black12,
  );

  static const BoxShadow boxShadow2blur05spread2X = BoxShadow(
    offset: Offset(2, 0),
    blurRadius: 2,
    spreadRadius: 0.5,
    //  blurStyle: BlurStyle.solid,
    color:Colors.black12,
  );
}
