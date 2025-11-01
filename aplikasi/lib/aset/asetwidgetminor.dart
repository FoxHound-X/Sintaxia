import 'package:flutter/material.dart';

Widget propertikursus(){
  return Row(
    children: [
      Icon(Icons.book_outlined, color: Colors.white, size: 50,),
      const SizedBox(width: 5,),
      Text(
        "8 Sections",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600
        ),
      )
    ],
  );
}