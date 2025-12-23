import 'package:aplikasi/aset/asetwidget.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi/aset/paketwarna.dart';
import 'package:aplikasi/aset/asetwidgetminor.dart';

class komputerdasar extends StatelessWidget {
  const komputerdasar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: paketwarna.nordicBacground,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: paketwarna.nordicBacground,
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

        drawer: Sidebar(),

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
                      "lib/aset/gambar/course/fund_ico.webp",
                      width: 350,
                      height: 210,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              //Status bar, Rating Kursus
              Padding(
                padding: EdgeInsets.only(top: 2, left: 21, right: 21),
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
                padding: const EdgeInsets.only(top: 39, right: 30),
                child: Text(
                  'Pengenala Komputer Dasar',
                  style: TextStyle(
                    color: paketwarna.nordicTitle,
                    fontSize: 20,fontWeight: FontWeight.bold
                  ),
                ),
              ),


              //Pembuat Kursus berisi Foto dan nama Guru
              Padding(
                padding: const EdgeInsets.only(left: 19, top: 10),
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
                      'Sintaxia Developer Group',
                      style: TextStyle(
                        fontSize: 15,
                        color: paketwarna.nordicTitle
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 65,),

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

              const SizedBox(height: 65,),
              Padding(
                padding: const EdgeInsets.only(left: 26, top: 20),
                child: Row(
                  children: [
                    propertiminor1(ikon: Icons.book_outlined, nama: "8 Sections"),
                    const SizedBox(width: 10,),
                    propertiminor1(ikon: Icons.timelapse_outlined, nama: "18 - Hours"),
                    const SizedBox(width: 10,),
                    propertiminor1(ikon: Icons.download_for_offline, nama: "Offline Learn"),
                  ],
                ),
              ),

              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 68),
                  child: Text(
                    "Lessons",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20,),

              const SizedBox(height: 15,),
              CourseDropdown(
                namapelajaran: 'Apa Itu Komputer', 
                isipelajaran: 'Komputer adalah mesin elektronik yang sangat pintar dan cepat. Ibaratnya, komputer itu seperti otak super yang bisa menerima informasi, memprosesnya, dan memberikan hasil yang kita inginkan.\n', 
                gambar: 'lib/aset/gambar/course/komputer.webp'),
              const SizedBox(height: 15,),
              CourseDropdown(
                namapelajaran: 'Input, Proces, Output', 
                isipelajaran: 'Input, Process, dan Output (IPO) adalah tiga tahapan utama dalam cara kerja komputer untuk mengolah data menjadi informasi.\n\n'
                'Input adalah tahap ketika komputer menerima data atau perintah dari pengguna atau perangkat lain, misalnya lewat keyboard, mouse, scanner, atau sensor. \n\n'
                'Setelah data masuk, komputer melakukan Process, yaitu tahap pengolahan oleh CPU di mana data dihitung, dianalisis, diurutkan, atau diolah sesuai instruksi program.\n\n'
                'Hasil dari proses ini kemudian diberikan pada tahap terakhir yaitu Output, yaitu informasi yang sudah siap disajikan kepada pengguna. Output bisa muncul dalam berbagai bentuk seperti tampilan di monitor, suara dari speaker, hasil cetakan printer, atau file yang tersimpan. Jadi, komputer bekerja secara berurutan: menerima input, mengolahnya, lalu menghasilkan output.\n\n', 
                gambar:'lib/aset/gambar/course/IPO.webp'
              ),
              const SizedBox(height: 40,)
            
            ],
          ),
        ),
      ),
    );
  }
}