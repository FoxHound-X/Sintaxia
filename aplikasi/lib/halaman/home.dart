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
                child:const Text(
                  "SINTAXIA",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: paketwarna.nordicTitle,
                  ),
                ),
                onPressed: () {
                  debugPrint('Aplikasi');
                  debugPrint('Aplikasi');
                },
              ),
            )
          ],
        ),


        body: RepaintBoundary(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //Title HeyThere
                Padding(padding: EdgeInsets.only(top: 20, bottom: 10, right: 100),
                  child:const Column(
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
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
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
                      SizedBox(width: 227,),
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
                      
                      
                const SizedBox(height: 3,),
                      
                //Tombol Kategori wok
                RepaintBoundary(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 2,),
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
                ),
                      
                const SizedBox(height: 20,),
                      
                
                RepaintBoundary(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10,),
                        Cardkursus(
                          icondificulty: Icons.signal_cellular_alt_1_bar, 
                          colorsific: paketwarna.dificultybeginer, 
                          judulkursus: 'HTML Pemula', 
                          pemilikkursus: 'By Lumrora Corp', 
                          deskripsi: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ex neque, convallis a eros eu, finibus varius orci. Nam eget.', 
                          targethalaman:() => Navigator.pushNamed(context, '/welcomepage'),
                        ),
                        const SizedBox(width: 10,),
                        Cardkursus(
                          icondificulty: Icons.signal_cellular_alt, 
                          colorsific: paketwarna.dificultyadvance, 
                          judulkursus: 'HTML Pemula', 
                          pemilikkursus: 'By Lumrora Corp', 
                          deskripsi: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ex neque, convallis a eros eu, finibus varius orci. Nam eget.', 
                          targethalaman: () {
                            Navigator.pushNamed(context, '/welcomepage');
                          },
                        ),
                        const SizedBox(width: 10,),
                        Cardkursus(
                          icondificulty: Icons.signal_cellular_alt_2_bar, 
                          colorsific: paketwarna.dificultyintermediet, 
                          judulkursus: 'HTML Pemula', 
                          pemilikkursus: 'By Lumrora Corp', 
                          deskripsi: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ex neque, convallis a eros eu, finibus varius orci. Nam eget.', 
                          targethalaman: () {
                            Navigator.pushNamed(context, '/welcomepage');
                          },
                        ),
                        const SizedBox(width: 10,),
                        Cardkursus(
                          icondificulty: Icons.signal_cellular_alt_1_bar, 
                          colorsific: paketwarna.dificultybeginer, 
                          judulkursus: 'HTML Pemula', 
                          pemilikkursus: 'By Lumrora Corp', 
                          deskripsi: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ex neque, convallis a eros eu, finibus varius orci. Nam eget.', 
                          targethalaman: () {
                            Navigator.pushNamed(context, '/welcomepage');
                          },
                        ),
                        const SizedBox(width: 10,),
                        Cardkursus(
                          icondificulty: Icons.signal_cellular_alt_1_bar, 
                          colorsific: paketwarna.dificultybeginer, 
                          judulkursus: 'HTML Pemula', 
                          pemilikkursus: 'By Lumrora Corp', 
                          deskripsi: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ex neque, convallis a eros eu, finibus varius orci. Nam eget.', 
                          targethalaman: () {
                            Navigator.pushNamed(context, '/welcomepage');
                          },
                        ),
                        const SizedBox(width: 10,),
                      ],
                    ),
                  ),
                ),
                      
                const SizedBox(height: 20,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Aplikasi'
                  ),
                ),
                const SizedBox(height: 20,),
                      
                //InfoGraphic Lable Kursus [Terluar]
                InfoGraphicCard(
                  haltujuan: () {
                    Navigator.pushNamed(context, '/welcomepage');
                  }, 
                  judul: 'Github dan Git', 
                  deskripsi: 'Kalian akan di ajarkan bagaimana cara menggunakan Github dan Git di windows',
                ),
                const SizedBox(height: 17,),
                InfoGraphicCard(
                  haltujuan: () {
                    Navigator.pushNamed(context, '/welcomehome');
                  }, 
                  judul: 'Github dan Git', 
                  deskripsi: 'Kalian akan di ajarkan bagaimana cara menggunakan Github dan Git di windows',
                ),
                const SizedBox(height: 17,),
                InfoGraphicCard(
                  haltujuan: () {
                    Navigator.pushNamed(context, '/welcomehome');
                  }, 
                  judul: 'Github dan Git', 
                  deskripsi: 'Kalian akan di ajarkan bagaimana cara menggunakan Github dan Git di windows',
                ),
                const SizedBox(height: 17,),
                InfoGraphicCard(
                  haltujuan: () {
                    Navigator.pushNamed(context, '/welcomehome');
                  }, 
                  judul: 'Github dan Git', 
                  deskripsi: 'Kalian akan di ajarkan bagaimana cara menggunakan Github dan Git di windows',
                ),
                const SizedBox(height: 17,),
                InfoGraphicCard(
                  haltujuan: () {
                    Navigator.pushNamed(context, '/welcomehome');
                  }, 
                  judul: 'Github dan Git', 
                  deskripsi: 'Kalian akan di ajarkan bagaimana cara menggunakan Github dan Git di windows',
                ),
                const SizedBox(height: 17,),
                InfoGraphicCard(
                  haltujuan: () {
                    Navigator.pushNamed(context, '/welcomehome');
                  }, 
                  judul: 'Github dan Git', 
                  deskripsi: 'Kalian akan di ajarkan bagaimana cara menggunakan Github dan Git di windows',
                ),
                const SizedBox(height: 17,),
                InfoGraphicCard(
                  haltujuan: () {
                    Navigator.pushNamed(context, '/welcomehome');
                  }, 
                  judul: 'Github dan Git', 
                  deskripsi: 'Kalian akan di ajarkan bagaimana cara menggunakan Github dan Git di windows',
                ),
                const SizedBox(height: 17,),
                InfoGraphicCard(
                  haltujuan: () {
                    Navigator.pushNamed(context, '/welcomehome');
                  }, 
                  judul: 'Github dan Git', 
                  deskripsi: 'Kalian akan di ajarkan bagaimana cara menggunakan Github dan Git di windows',
                ),
                const SizedBox(height: 17,),
                InfoGraphicCard(
                  haltujuan: () {
                    Navigator.pushNamed(context, '/welcomehome');
                  }, 
                  judul: 'Github dan Git', 
                  deskripsi: 'Kalian akan di ajarkan bagaimana cara menggunakan Github dan Git di windows',
                ),
                const SizedBox(height: 17,),
                InfoGraphicCard(
                  haltujuan: () {
                    Navigator.pushNamed(context, '/welcomehome');
                  }, 
                  judul: 'Github dan Git', 
                  deskripsi: 'Kalian akan di ajarkan bagaimana cara menggunakan Github dan Git di windows',
                ),
                const SizedBox(height: 17,),
                InfoGraphicCard(
                  haltujuan: () {
                    Navigator.pushNamed(context, '/welcomehome');
                  }, 
                  judul: 'Github dan Git', 
                  deskripsi: 'Kalian akan di ajarkan bagaimana cara menggunakan Github dan Git di windows',
                ),
                const SizedBox(height: 17,),
                InfoGraphicCard(
                  haltujuan: () {
                    Navigator.pushNamed(context, '/welcomehome');
                  }, 
                  judul: 'Github dan Git', 
                  deskripsi: 'Kalian akan di ajarkan bagaimana cara menggunakan Github dan Git di windows',
                ),
                const SizedBox(height: 17,),
                InfoGraphicCard(
                  haltujuan: () {
                    Navigator.pushNamed(context, '/welcomehome');
                  }, 
                  judul: 'Github dan Git', 
                  deskripsi: 'Kalian akan di ajarkan bagaimana cara menggunakan Github dan Git di windows',
                ),
                const SizedBox(height: 17,),
                InfoGraphicCard(
                  haltujuan: () {
                    Navigator.pushNamed(context, '/welcomehome');
                  }, 
                  judul: 'Github dan Git', 
                  deskripsi: 'Kalian akan di ajarkan bagaimana cara menggunakan Github dan Git di windows',
                ),
                const SizedBox(height: 17,),
                InfoGraphicCard(
                  haltujuan: () {
                    Navigator.pushNamed(context, '/welcomehome');
                  }, 
                  judul: 'Github dan Git', 
                  deskripsi: 'Kalian akan di ajarkan bagaimana cara menggunakan Github dan Git di windows',
                ),
                const SizedBox(height: 17,),
              ],
            )
          ),
        ),
      ),
    );
  }
}