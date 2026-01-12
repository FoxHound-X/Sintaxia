import 'package:aplikasi/aset/asetwidget.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi/aset/paketwarna.dart';


class FirstTime extends StatefulWidget {
  const FirstTime({super.key});

  @override
  State<FirstTime> createState() => _FirstTimeState();
}

class _FirstTimeState extends State<FirstTime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: paketwarna.nordicBacground,
      body: RepaintBoundary(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 40,),
                  const Text("Welcome To The", style: TextStyle(fontSize: 15, color: paketwarna.nordicTitle)),
                  const Text("SINTAXIA APPS", style: TextStyle(color: paketwarna.nordicTitle, fontSize: 25, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 150,),
                  const Text(
                    "Please Insert You Name First", 
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white
                    ),
                  ),

                  TextField(
                    style: TextStyle(
                      color: Colors.white
                    ),
                    decoration: InputDecoration(
                      labelText: 'Name',
                      hintText: 'Insert you Name Buddy',
                      border: OutlineInputBorder()
                    ),
                  )
                ],
              ),
            ),

          ) 
        ),
      ),
    );
  }
}