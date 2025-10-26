import 'package:aplikasi/aset/paketwarna.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi/aset/asetwidget.dart';


class HalamanHome extends StatelessWidget {
  const HalamanHome({super.key});

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
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 10, right: 100),
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
                        const SizedBox(width: 10),
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
                          judulkursus: 'Unity Dasar',
                          pemilikkursus: 'By Lumrora Corp',
                          deskripsi:
                              'Pelajari dasar-dasar Unity untuk mulai membuat game pertamamu!',
                          targethalaman: () =>
                              Navigator.pushNamed(context, '/variabledasar'),
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
      
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Aplikasi'),
                ),
      
                const SizedBox(height: 20),
      
                // === INFOGRAPHIC CARD ===
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
