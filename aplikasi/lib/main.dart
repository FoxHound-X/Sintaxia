import 'package:flutter/material.dart';
import 'aset/paketwarna.dart';
import 'halaman/home.dart';
import 'halaman/course/fundamental.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(Aplikasi());
}

class Aplikasi extends StatefulWidget{
  const Aplikasi({super.key});

  @override
  State<Aplikasi> createState() => _AplikasiState();
}

class _AplikasiState extends State<Aplikasi> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcomepage',
      routes: {
        '/welcomepage': (context) => const welcome(),
        '/homepage': (context) => const HalamanHome(),
        '/Fundamental': (context) => const Fundamental(),
      },
    );
  }
}
// 
class welcome extends StatefulWidget{
  const welcome({super.key});

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: paketwarna.nordicBacground,
      body: RepaintBoundary(
        child: AnimatedOpacity(
          opacity: _opacity,
          duration: Duration(seconds: 2),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Beta Testing',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 7,
                              color: paketwarna.nordicTitle.withOpacity(0.5),
                              fontWeight: FontWeight.normal
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 32,),
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
          
                    const SizedBox(height: 33,),
                    Image.asset("lib/aset/gambar/gambarku.png"),
                    const SizedBox(height: 33,),
                    SizedBox(
                      height: 40,
                      child: DefaultTextStyle(
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                          fontSize: 21,
                          color: paketwarna.nordicTitle
                        ),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            RotateAnimatedText('You Jurney Start Here' ),
                            RotateAnimatedText('Make Your Self Great'),
                            RotateAnimatedText('And Trust Your Self'),
                          ],
                          repeatForever: true,
                          pause: const Duration(milliseconds: 1700),
                        )
                      ),
                    ),
                    Text(
                      "Sintaxia is a smart learning platform designed to guide you through the fundamentals of programming — from your first line of code to your first masterpiece, and beyond as you explore other programming languages.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                        fontSize: 10,
                        color: paketwarna.nordicTitle.withOpacity(0.4)
                      ),
                    ),
                    const SizedBox(height: 40,),
          
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
                      onPressed: () async {
                        await Future.delayed(const Duration(milliseconds: 100));
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            transitionDuration: const Duration(milliseconds: 600),
                            pageBuilder: (context, animation, secondaryAnimation) => const HalamanHome(),
                            transitionsBuilder: (context, animation, secondaryAnimation, child) {
                              final offsetAnimation = Tween<Offset>(
                                begin: const Offset(0, 0.2),
                                end: Offset.zero,
                              ).animate(animation);
                              return FadeTransition(
                                opacity: animation,
                                child: SlideTransition(position: offsetAnimation, child: child),
                              );
                            },
                          ),
                        );
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
                    const SizedBox(height: 65,),
                    const Text(
                      "© 2025 Lumora Apps. All rights reserved.",
                      style: TextStyle(
                        fontSize: 10,
                        color: paketwarna.nordicTitle,
                        ),
                      )
                  ],
                ),
              ),
            ),
          ),
        ),
      )
    );
  }
}