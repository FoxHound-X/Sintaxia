import 'package:aplikasi/aset/asetwidget.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi/aset/paketwarna.dart';
import 'package:aplikasi/aset/asetwidgetminor.dart';

class Cssdasar extends StatelessWidget {
  const Cssdasar({super.key});

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
                    const Text(
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
                        const Icon(
                          Icons.star_rate_sharp,
                          color: paketwarna.nordicTitle,
                          size: 20,
                        ),
                        const Icon(
                          Icons.star_rate_sharp,
                          color: paketwarna.nordicTitle,
                          size: 20,
                        ),
                        const Icon(
                          Icons.star_rate_sharp,
                          color: paketwarna.nordicTitle,
                          size: 20,
                        ),
                        const Icon(
                          Icons.star_rate_sharp,
                          color: paketwarna.nordicTitle,
                          size: 20,
                        ),
                      ],
                    ),

                  ],
                ),
              ),

              const SizedBox(height: 10,),
              //Judul Kursus
              Padding(
                padding: const EdgeInsets.only(top: 39, ),
                child: const Text(
                  'CSS Dasar',
                  style: TextStyle(
                    color: paketwarna.nordicTitle,
                    fontSize: 20,fontWeight: FontWeight.bold,
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
                      'Kadek Setia Dharma',
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
                        "Kursus ini akan mengajarkan kalian mengenai CSS dasar dan mempraktekan nya langsung",
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
                    propertiminor1(ikon: Icons.book_outlined, nama: "6 Sections"),
                    const SizedBox(width: 10,),
                    propertiminor1(ikon: Icons.timelapse_outlined, nama: "10   - Hours"),
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
              CourseDropdown(
                namapelajaran: 'Apa itu CSS?',
                gambar: 'lib/aset/gambar/course/gbr1.webp',
                isipelajaran:
                'CSS (Cascading Style Sheets) adalah bahasa yang digunakan untuk mengatur tampilan dan gaya halaman web.\n\n'
                'CSS digunakan untuk mengatur warna, ukuran teks, layout, jarak, dan tampilan visual lainnya.\n\n'
                'CSS bekerja bersama HTML. HTML mengatur struktur, sedangkan CSS mengatur tampilan.\n\n'
                'File CSS biasanya memiliki ekstensi .css.',
              ),
              SizedBox(height: 15),

              CourseDropdown(
                namapelajaran: 'Cara Menggunakan CSS',
                gambar: 'lib/aset/gambar/course/gbr1.webp',
                isipelajaran:
                'CSS dapat digunakan dengan tiga cara utama.\n\n'
                '1. Inline CSS (langsung di tag HTML)\n'
                'Contoh:\n'
                '<p style=\"color: red;\">Teks merah</p>\n\n'
                '2. Internal CSS (di dalam tag <style>)\n'
                'Contoh:\n'
                '<style>\n'
                '  p { color: blue; }\n'
                '</style>\n\n'
                '3. External CSS (file terpisah)\n'
                'Contoh:\n'
                '<link rel=\"stylesheet\" href=\"style.css\">',
              ),
              SizedBox(height: 15),

              CourseDropdown(
                namapelajaran: 'Selector CSS',
                gambar: 'lib/aset/gambar/course/gbr1.webp',
                isipelajaran:
                'Selector digunakan untuk memilih elemen HTML yang akan diberi gaya.\n\n'
                'Beberapa selector dasar:\n\n'
                'Selector elemen:\n'
                'p { color: black; }\n\n'
                'Selector class:\n'
                '.judul { font-size: 20px; }\n\n'
                'Selector id:\n'
                '#header { background-color: gray; }\n\n'
                'Class dapat digunakan berkali-kali, sedangkan id bersifat unik.',
              ),
              SizedBox(height: 15),

              CourseDropdown(
                namapelajaran: 'Properti dan Nilai CSS',
                gambar: 'lib/aset/gambar/course/gbr1.webp',
                isipelajaran:
                'CSS bekerja dengan konsep properti dan nilai.\n\n'
                'Format dasar:\n'
                'selector {\n'
                '  properti: nilai;\n'
                '}\n\n'
                'Contoh:\n'
                'p {\n'
                '  color: red;\n'
                '  font-size: 16px;\n'
                '}\n\n'
                'Properti mengatur apa yang diubah, nilai menentukan hasilnya.',
              ),
              SizedBox(height: 15),

              CourseDropdown(
                namapelajaran: 'Warna dan Teks',
                gambar: 'lib/aset/gambar/course/gbr1.webp',
                isipelajaran:
                'CSS menyediakan berbagai properti untuk mengatur teks dan warna.\n\n'
                'Contoh pengaturan teks:\n'
                'p {\n'
                '  color: blue;\n'
                '  font-size: 18px;\n'
                '  text-align: center;\n'
                '}\n\n'
                'Color dapat ditulis dalam bentuk:\n'
                'Nama warna (red, blue)\n'
                'HEX (#ff0000)\n'
                'RGB (rgb(255,0,0))',
              ),
              SizedBox(height: 15),

              CourseDropdown(
                namapelajaran: 'Box Model CSS',
                gambar: 'lib/aset/gambar/course/gbr1.webp',
                isipelajaran:
                'Setiap elemen di CSS dianggap sebagai sebuah kotak (box).\n\n'
                'Box Model terdiri dari:\n'
                'Content (isi)\n'
                'Padding (jarak dalam)\n'
                'Border (garis tepi)\n'
                'Margin (jarak luar)\n\n'
                'Contoh:\n'
                'div {\n'
                '  margin: 10px;\n'
                '  padding: 15px;\n'
                '  border: 1px solid black;\n'
                '}\n\n'
                'Memahami box model sangat penting untuk mengatur layout.',
              ),


          SizedBox(height: 40),
            
            ],
          ),
        ),
      ),
    );
  }
}