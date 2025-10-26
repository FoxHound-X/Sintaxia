import 'package:flutter/material.dart';
import 'package:aplikasi/aset/paketwarna.dart';

class Fundamental extends StatelessWidget {
  const Fundamental({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

              //Gambar Kursus
              Container(
                margin: const EdgeInsets.all(20),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      "lib/aset/gambar/logo.avif",
                      width: 300,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

            
            ],
          ),
        ),
      ),
    );
  }
}