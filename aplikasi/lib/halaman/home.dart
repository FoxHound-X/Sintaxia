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
                onPressed: () => Navigator.pushNamed(context, '/welcomepage'),
              ),
            )
          ],
        ),


        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [

                //Title HeyThere
                Padding(padding: EdgeInsets.only(top: 20, bottom: 10, right: 100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hey there!",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: paketwarna.nordicTitle,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        "Ready to level up your skills?",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: paketwarna.nordicTitle,
                          fontSize: 17,
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
                ),

                Container(
                  width: 200,
                  height: 230,
                  child: Card(
                    color: paketwarna.nordicCard,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                    child: Column(
                      
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadiusGeometry.vertical(top: Radius.circular(9)),
                          child: Image.asset(
                            'lib/aset/gambar/logo.avif',
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 150,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 1.2        , 8.0, 8.0),
                          child: Column(
                            children: [
                              const Text(
                                'Pembelajaran Flutter Dasar',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: paketwarna.nordicTitle
                                ),
                              ),

                              const SizedBox(height: 5,),
                              const Text(
                                'aplikasi ini sanget bermanfaat mafbjadbfgdhasfgwytwerywetfsdgfdshfdsfvdgsgdsgnkbdfbshdgfhsdhfgshdsdfsfhdshgafhgdag',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                  color: paketwarna.nordicTitle
                                ),
                              ),
                            ],
                          )
                        )
                      ],
                    ),
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