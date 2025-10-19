import 'package:flutter/material.dart';
import 'aset/paketwarna.dart';
void main() => runApp( Aplikasi());

class Aplikasi extends StatelessWidget{
  const Aplikasi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget{
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: paketwarna.nordicBacground,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                SizedBox(height: 30,),
                const Text(
                  "Welcome To The",
                  style: TextStyle(
                    fontSize: 15,
                    color: paketwarna.nordicTitle,
                  ),
                ),

                const Text(
                  "SINTAXIA APPS",
                  style: TextStyle(
                    color: paketwarna.nordicTitle,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                ),

                SizedBox(height: 50,),
                Image.asset("lib/aset/gambar/gambarku.png"),
                SizedBox(height: 50,),
                const Text(
                  "Your journey starts here",
                  style: TextStyle(
                    fontSize: 21,
                    color: paketwarna.nordicTitle
                  ),
                ),
                Text(
                  "Sintaxia is a smart learning platform designed to guide you through the fundamentals of programming — from your first line of code to your first masterpiece, and beyond as you explore other programming languages.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10,
                    color: paketwarna.nordicTitle.withOpacity(0.4)
                  ),
                ),
                SizedBox(height: 40,),

                //Tombol
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: paketwarna.nordicPrimButton,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9),
                      ),
                    ),
                    onPressed: () {
                      // contoh navigasi ke halaman berikutnya
                      Navigator.pushNamed(context, '/home');
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Start Apps', style: TextStyle(fontSize: 16, color: paketwarna.nordicTitle)),
                        SizedBox(width: 10),
                        Icon(Icons.arrow_forward_ios, size: 16, color: paketwarna.nordicTitle,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}