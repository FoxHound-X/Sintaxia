import 'package:aplikasi/aset/paketwarna.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi/main.dart';

class halaman_home extends StatelessWidget {
  const halaman_home({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/welcomepage': (context) => welcome()
      },

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: paketwarna.nordicBacground,
        appBar: AppBar(
          backgroundColor: paketwarna.nordicBacground,
          leading: IconButton(
            icon: Icon(Icons.menu_rounded), color: paketwarna.deepea0,
            onPressed: (){
              debugPrint("Aplikasi berhasil");
            },
          ),

          actions: [
            TextButton(
              child: Text("SINTAXIA", style: TextStyle(
                fontSize: 18,
                color: paketwarna.nordicTitle,
              ),),
              onPressed: () {
                Navigator.pushNamed(context, '/welcomepage');
              },
            )
          ],
        ),
      ),
    );
  }
}