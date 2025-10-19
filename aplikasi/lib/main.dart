import 'package:flutter/material.dart';

void main(){
  runApp(Aplikasi());
}

class Aplikasi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplikasi Edukais"),
        backgroundColor: Colors.lime,
      ),

      body: SingleChildScrollView(
        child:  Container(
          child: Column(
            children: [
              
            ],
          ),
        ),
      ),

    );
  }
}