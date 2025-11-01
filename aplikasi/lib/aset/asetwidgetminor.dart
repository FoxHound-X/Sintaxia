import 'package:flutter/material.dart';

Widget propertiminor1({
  required IconData ikon,
  required String nama,
}){
  return Row(
    children: [
      Icon(ikon, color: Colors.white, size: 35,),
      const SizedBox(width: 5,),
      Text(
        nama,
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w600
        ),
      )
    ],
  );
}