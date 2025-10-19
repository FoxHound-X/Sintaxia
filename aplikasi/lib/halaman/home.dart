import 'package:aplikasi/aset/paketwarna.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi/main.dart';
import 'package:aplikasi/aset/asetwidget.dart';

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
            Padding(
              padding: EdgeInsets.only(right: 3),
              child: TextButton(
                child: Text(
                  "SINTAXIA",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: paketwarna.nordicTitle,
                  ),
                ),
                onPressed: () => debugPrint("aplikasi berjalan"),
              ),
            )
          ],
        ),


        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [

                //Title HeyThere
                Padding(padding: EdgeInsets.only(top: 20, bottom: 10, right: 90),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hey there!",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: paketwarna.nordicTitle,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Ready to level up your skills?",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: paketwarna.nordicTitle,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),


                //properti seeall dan lain nya
                Padding(
                  padding: const EdgeInsets.only(left: 17, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                          color: paketwarna.nordicTitle,
                          fontSize: 14
                        ),
                      ),
                      SizedBox(width: 210,),
                      Text(
                        "Seeall",
                        style: TextStyle(
                          color: paketwarna.nordicTitle,
                          fontSize: 14
                        ),
                      )
                    ],
                  ),
                ),


                SizedBox(height: 3,),

                //Tombol Kategori wok
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: 2,),
                      Tombol(
                        nama: "Aplikasi",
                        onPressed: () {
                          Navigator.pushNamed(context, '/welcomepage');
                        },
                      ),
                      Tombol(
                        nama: "Aplikasi",
                        onPressed: () {
                          Navigator.pushNamed(context, '/welcomepage');
                        },
                      ),
                      Tombol(
                        nama: "Aplikasi",
                        onPressed: () {
                          Navigator.pushNamed(context, '/welcomepage');
                        },
                      ),
                      Tombol(
                        nama: "Aplikasi",
                        onPressed: () {
                          Navigator.pushNamed(context, '/welcomepage');
                        },
                      ),
                      Tombol(
                        nama: "Aplikasi",
                        onPressed: () {
                          Navigator.pushNamed(context, '/welcomepage');
                        },
                      ),
                      Tombol(
                        nama: "Aplikasi",
                        onPressed: () {
                          Navigator.pushNamed(context, '/welcomepage');
                        },
                      ),
                      Tombol(
                        nama: "Aplikasi",
                        onPressed: () {
                          Navigator.pushNamed(context, '/welcomepage');
                        },
                      ),
                      SizedBox(width: 20,)

                    ],
                  ),
                )

              ],
            ),
          )
        ),
      ),
    );
  }
}