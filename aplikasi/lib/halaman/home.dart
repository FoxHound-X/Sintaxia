import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:aplikasi/aset/paketwarna.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi/aset/asetwidget.dart';



class HalamanHome extends StatefulWidget {
  const HalamanHome({super.key});

  @override
  State<HalamanHome> createState() => _HalamanHomeState();
}

class _HalamanHomeState extends State<HalamanHome> {
  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Scaffold(
        backgroundColor: paketwarna.nordicBacground,
        appBar: AppBar(
          backgroundColor: paketwarna.nordicBacground,
          leading: IconButton(
            icon: const Icon(Icons.menu_rounded),
            color: paketwarna.deepea0,
            onPressed: () {
              debugPrint("Aplikasi berhasil");
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 3),
              child: TextButton(
                child: const Text(
                  "SINTAXIA",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: paketwarna.nordicTitle,
                  ),
                ),
                onPressed: () {
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
                // === HEY THERE ===
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 10, right: 100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      DefaultTextStyle(
                        style: TextStyle(
                          color: paketwarna.nordicTitle,
                          fontSize: 17,
                        ),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText(
                              'Hey Students......',
                              speed: const Duration(milliseconds: 100),
                            ),
                          ],
                          pause: const Duration(milliseconds: 1000),
                          repeatForever: true, // atau totalRepeatCount: 1 kalau mau sekali
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
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
      
                // === CATEGORY TITLE ===
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                          color: paketwarna.nordicTitle,
                          fontSize: 14,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "See all",
                        style: TextStyle(
                          color: paketwarna.nordicTitle,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
      
                const SizedBox(height: 3),
      
                // === CATEGORY BUTTONS ===
                RepaintBoundary(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 5),
                        Tombol(
                          nama: "HTML",
                          onPressed: () {
                            Navigator.pushNamed(context, '/Fundamental');
                          },
                        ),
                        Tombol(
                          nama: "CSS",
                          onPressed: () {
                            Navigator.pushNamed(context, '/welcomepage');
                          },
                        ),
                        Tombol(
                          nama: "CSS",
                          onPressed: () {
                            Navigator.pushNamed(context, '/welcomepage');
                          },
                        ),
                        Tombol(
                          nama: "CSS",
                          onPressed: () {
                            Navigator.pushNamed(context, '/welcomepage');
                          },
                        ),
                        Tombol(
                          nama: "CSS",
                          onPressed: () {
                            Navigator.pushNamed(context, '/welcomepage');
                          },
                        ),
                        Tombol(
                          nama: "CSS",
                          onPressed: () {
                            Navigator.pushNamed(context, '/welcomepage');
                          },
                        ),
                        Tombol(
                          nama: "CSS",
                          onPressed: () {
                            Navigator.pushNamed(context, '/welcomepage');
                          },
                        ),
                          Tombol(
                            nama: "CSS",
                            onPressed: () {
                              Navigator.pushNamed(context, '/welcomepage');
                            },
                          ),
                        const SizedBox(width: 20),
                      ],
                    ),
                  ),
                ),
      
                const SizedBox(height: 20),
      
                // === COURSE CARDS ===
                RepaintBoundary(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        Cardkursus(
                          icondificulty: Icons.signal_cellular_alt_1_bar,
                          colorsific: paketwarna.dificultybeginer,
                          judulkursus: 'HTML Dasar',
                          pemilikkursus: 'Lumora Dev',
                          deskripsi:
                              'Anda Akan mempelajari dasra dasar mengenai HTML dan praktek langsung',
                          targethalaman: () {
                            showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Error Content'),
                              content: const Text("Kursus dalam Pengembangan, Terima kasih"),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text('OK'),
                                ),
                              ],
                              backgroundColor: paketwarna.nordicCard,
                            ),
                          );
                              // Navigator.pushNamed(context, '/variabledasar'),
                          },
                        ),
                        const SizedBox(width: 10),
                        Cardkursus(
                          icondificulty: Icons.signal_cellular_alt,
                          colorsific: paketwarna.dificultyadvance,
                          judulkursus: 'HTML Pemula',
                          pemilikkursus: 'By Lumrora Corp',
                          deskripsi:
                              'Belajar dasar HTML untuk membuat halaman web pertama kamu.',
                          targethalaman: () =>
                              Navigator.pushNamed(context, '/welcomepage'),
                        ),
                        const SizedBox(width: 10),
                        Cardkursus(
                          icondificulty: Icons.signal_cellular_alt,
                          colorsific: paketwarna.dificultyadvance,
                          judulkursus: 'HTML Pemula',
                          pemilikkursus: 'By Lumrora Corp',
                          deskripsi:
                              'Belajar dasar HTML untuk membuat halaman web pertama kamu.',
                          targethalaman: () =>
                              Navigator.pushNamed(context, '/welcomepage'),
                        ),
                        const SizedBox(width: 10),
                        Cardkursus(
                          icondificulty: Icons.signal_cellular_alt,
                          colorsific: paketwarna.dificultyadvance,
                          judulkursus: 'HTML Pemula',
                          pemilikkursus: 'By Lumrora Corp',
                          deskripsi:
                              'Belajar dasar HTML untuk membuat halaman web pertama kamu.',
                          targethalaman: () =>
                              Navigator.pushNamed(context, '/welcomepage'),
                        ),
                        const SizedBox(width: 10),
                        Cardkursus(
                          icondificulty: Icons.signal_cellular_alt,
                          colorsific: paketwarna.dificultyadvance,
                          judulkursus: 'HTML Pemula',
                          pemilikkursus: 'By Lumrora Corp',
                          deskripsi:
                              'Belajar dasar HTML untuk membuat halaman web pertama kamu.',
                          targethalaman: () =>
                              Navigator.pushNamed(context, '/welcomepage'),
                        ),
                        const SizedBox(width: 10),
                        Cardkursus(
                          icondificulty: Icons.signal_cellular_alt,
                          colorsific: paketwarna.dificultyadvance,
                          judulkursus: 'HTML Pemula',
                          pemilikkursus: 'By Lumrora Corp',
                          deskripsi:
                              'Belajar dasar HTML untuk membuat halaman web pertama kamu.',
                          targethalaman: () =>
                              Navigator.pushNamed(context, '/welcomepage'),
                        ),
                        const SizedBox(width: 10),
                        Cardkursus(
                          icondificulty: Icons.signal_cellular_alt,
                          colorsific: paketwarna.dificultyadvance,
                          judulkursus: 'HTML Pemula',
                          pemilikkursus: 'By Lumrora Corp',
                          deskripsi:
                              'Belajar dasar HTML untuk membuat halaman web pertama kamu.',
                          targethalaman: () =>
                              Navigator.pushNamed(context, '/welcomepage'),
                        ),
                        const SizedBox(width: 10),
                        Cardkursus(
                          icondificulty: Icons.signal_cellular_alt,
                          colorsific: paketwarna.dificultyadvance,
                          judulkursus: 'HTML Pemula',
                          pemilikkursus: 'By Lumrora Corp',
                          deskripsi:
                              'Belajar dasar HTML untuk membuat halaman web pertama kamu.',
                          targethalaman: () =>
                              Navigator.pushNamed(context, '/welcomepage'),
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
      
                const SizedBox(height: 20),
      
                 Padding(
                  padding: const EdgeInsets.only(left: 18, top: 35),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: const Text('Fundamental Programming',
                    style: TextStyle(
                      color: paketwarna.nordicTitle,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter'
                    ),),
                  ),
                ),
      
                const SizedBox(height: 20),
      
                // === INFOGRAPHIC CARD ===
                InfoGraphicCard(
                  haltujuan: () {
                    Navigator.pushNamed(context, '/Fundamental');
                  },
                  judulmateri: 'Fundamental Tingkat Beginer',
                  deskripsi:
                      'Kalian akan di ajarka tentang Varable, Looping dan Pengkondisian secara cepat, ringkas dan efisien',
                  gambar: 'lib/aset/gambar/course/gbr1.webp',
                ),
                InfoGraphicCard(
                  haltujuan: () {
                    Navigator.pushNamed(context, '/variabledasar');
                  },
                  judulmateri: 'Fundamental Tingkat Intermediate',
                  deskripsi:
                      'Di sini kalian akan di ajarkan tentang OOP dan cara menggunakan nya',
                  gambar: 'lib/aset/gambar/course/fund_ico.webp',
                ),
                InfoGraphicCard(
                  haltujuan: () {
                    Navigator.pushNamed(context, '/variabledasar');
                  },
                  judulmateri: 'Tips Memahami Bahasa Pemrograman',
                  deskripsi:
                      'Kalian akan di berikan tips agar cepat dan tepat memilih bahasa pemrograman',
                ),
                InfoGraphicCard(
                  haltujuan: () {
                    Navigator.pushNamed(context, '/variabledasar');
                  },
                  judulmateri: 'Github dan Git',
                  deskripsi:
                      'Kalian akan diajarkan bagaimana cara menggunakan Github dan Git di Windows',
                ),
                InfoGraphicCard(
                  haltujuan: () {
                    Navigator.pushNamed(context, '/variabledasar');
                  },
                  judulmateri: 'Github dan Git',
                  deskripsi:
                      'Kalian akan diajarkan bagaimana cara menggunakan Github dan Git di Windows',
                ),
      
                const SizedBox(height: 17),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
