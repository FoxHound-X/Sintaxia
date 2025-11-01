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
                "Course Detail",
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
                      "lib/aset/gambar/gbr1.webp",
                      width: 350,
                      height: 210,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              //Status bar, Rating Kursus
              Padding(
                padding: EdgeInsets.only(top: 7, left: 21, right: 21),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Status: Free Course",
                      style: TextStyle(
                        fontSize: 15,
                        color: paketwarna.nordicTitle,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.star_rate_sharp,
                          color: paketwarna.nordicTitle,
                          size: 20,
                        ),
                        Icon(
                          Icons.star_rate_sharp,
                          color: paketwarna.nordicTitle,
                          size: 20,
                        ),
                        Icon(
                          Icons.star_rate_sharp,
                          color: paketwarna.nordicTitle,
                          size: 20,
                        ),
                      ],
                    ),

                  ],
                ),
              ),

              //Judul Kursus
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 30),
                child: Text(
                  'Belajar Fundamental Pemrograman',
                  style: TextStyle(
                    color: paketwarna.nordicTitle,
                    fontSize: 20,fontWeight: FontWeight.bold
                  ),
                ),
              ),


              //Pembuat Kursus berisi Foto dan nama Guru
              Padding(
                padding: const EdgeInsets.only(left: 19, top: 14),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(50),
                      child: Image.asset(
                        "lib/aset/gambar/logoapps.png",
                        width: 40,
                        height: 40,
                      ),
                    ),

                    const SizedBox(width: 10,),
                    Text(
                      'Kadek Setia Dharma',
                      style: TextStyle(
                        fontSize: 15,
                        color: paketwarna.nordicTitle
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 35,),

              //Deskripsi kursus
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Text(
                        'Description',
                        style: TextStyle(
                          color: paketwarna.nordicTitle,
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque nisl ipsum, iaculis consequat nibh vitae, scelerisque luctus sapien. Vivamus gravida felis ornare neque dapibus consectetur nec vel odio. ",
                        style: TextStyle(
                          fontSize: 13,
                          color: paketwarna.nordicTitle.withOpacity(0.8),
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 5),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.book_outlined, color: Colors.white, size: 35,),
                        const SizedBox(width: 5,),
                        Text(
                          "8 Sections",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.book_outlined, color: Colors.white, size: 35,),
                        const SizedBox(width: 5,),
                        Text(
                          "8 Sections",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.book_outlined, color: Colors.white, size: 35,),
                        const SizedBox(width: 5,),
                        Text(
                          "8 Sections",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}