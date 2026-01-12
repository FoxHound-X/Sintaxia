import 'package:aplikasi/aset/asetwidget.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi/aset/paketwarna.dart';
import '../Systemroute.dart';
import 'package:shared_preferences/shared_preferences.dart';


class FirstTime extends StatefulWidget {
  const FirstTime({super.key});

  @override
  State<FirstTime> createState() => _FirstTimeState();
}

class _FirstTimeState extends State<FirstTime> {
  final TextEditingController _namaControler = TextEditingController();

  Future<void> _simpanNama() async {
    final prefs  = await SharedPreferences.getInstance();
    final nama = _namaControler.text.trim();

    if (nama.isEmpty) return;

    await prefs.setString('nama', nama);
    await prefs.setBool('isFirstTime', false);
  }

  @override
  void dispose(){
    _namaControler.dispose();
    super.dispose();
  }
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

                  const SizedBox(height: 10,),

                  TextField(
                    controller: _namaControler,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Nama',
                      hintText: 'Masukkan nama kamu',

                      labelStyle: const TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),

                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),

                  const SizedBox(height: 50,),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: paketwarna.nordicPrimButton,
                        elevation: 3,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () async {
                        await _simpanNama();
                        Navigator.pushNamed(context, '/homepage');
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Start Apps',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              letterSpacing: 0.5,
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.arrow_forward_rounded, size: 20, color: Colors.white),
                        ],
                      ),
                    ),
                  ),


                ],
              ),
            ),

          ) 
        ),
      ),
    );
  }
}