import 'package:aplikasi/aset/asetwidget.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi/aset/paketwarna.dart';
import 'package:aplikasi/aset/asetwidgetminor.dart';

class Htmldasar extends StatelessWidget {
  const Htmldasar({super.key});

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
                padding: const EdgeInsets.only(top: 39, right: 91),
                child: const Text(
                  'Fundamental Pemrograman',
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
                        "Kursus Ini akan mengajari kalian Konsep Pemrograman dasar seperti variable, tipe data dan lainnya. kalian di ajarkan sangat dasar hinggi memahami konsep dasar nyaa",
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
                    propertiminor1(ikon: Icons.timelapse_outlined, nama: "10 - Hours"),
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
                  namapelajaran: 'Apa itu HTML?',
                  gambar: 'lib/aset/gambar/course/gbr1.webp',
                  isipelajaran:
                  'HTML (HyperText Markup Language) adalah bahasa standar yang digunakan untuk membuat struktur halaman web.\n\n'
                  'HTML tidak digunakan untuk logika atau perhitungan, melainkan untuk menyusun elemen seperti teks, gambar, link, dan tombol.\n\n'
                  'HTML bekerja bersama CSS untuk tampilan dan JavaScript untuk interaksi.\n\n'
                  'File HTML biasanya memiliki ekstensi .html atau .htm.',
                ),
                SizedBox(height: 15),

                CourseDropdown(
                  namapelajaran: 'Struktur Dasar HTML',
                  gambar: 'lib/aset/gambar/course/gbr1.webp',
                  isipelajaran:
                  'Setiap dokumen HTML memiliki struktur dasar agar dapat dikenali oleh browser.\n\n'
                  'Contoh struktur HTML dasar:\n\n'
                  '<!DOCTYPE html>\n'
                  '<html>\n'
                  '  <head>\n'
                  '    <title>Judul Halaman</title>\n'
                  '  </head>\n'
                  '  <body>\n'
                  '    Konten halaman ditulis di sini\n'
                  '  </body>\n'
                  '</html>\n\n'
                  'Penjelasan singkat:\n'
                  'DOCTYPE memberi tahu browser bahwa dokumen menggunakan HTML.\n'
                  'html adalah pembungkus seluruh elemen.\n'
                  'head berisi informasi halaman.\n'
                  'body berisi konten yang tampil di layar.',
                ),
                SizedBox(height: 15),

                CourseDropdown(
                  namapelajaran: 'Tag dan Elemen HTML',
                  gambar: 'lib/aset/gambar/course/gbr1.webp',
                  isipelajaran:
                  'HTML menggunakan tag untuk menandai elemen.\n\n'
                  'Tag biasanya ditulis dengan tanda < > dan berpasangan.\n\n'
                  'Contoh:\n'
                  '<p>Ini adalah paragraf</p>\n\n'
                  'Tag pembuka: <p>\n'
                  'Isi elemen: Ini adalah paragraf\n'
                  'Tag penutup: </p>\n\n'
                  'Beberapa tag umum:\n'
                  'h1 sampai h6 untuk judul\n'
                  'p untuk paragraf\n'
                  'br untuk pindah baris\n'
                  'hr untuk garis horizontal',
                ),
                SizedBox(height: 15),

                CourseDropdown(
                  namapelajaran: 'Teks dan Heading',
                  gambar: 'lib/aset/gambar/course/gbr1.webp',
                  isipelajaran:
                  'HTML menyediakan tag khusus untuk menampilkan teks dan judul.\n\n'
                  'Heading digunakan untuk judul dan memiliki tingkat kepentingan.\n\n'
                  'Contoh:\n'
                  '<h1>Judul Utama</h1>\n'
                  '<h2>Sub Judul</h2>\n'
                  '<p>Ini adalah paragraf teks.</p>\n\n'
                  'h1 adalah judul paling penting.\n'
                  'Semakin besar angka heading, semakin kecil prioritasnya.',
                ),
                SizedBox(height: 15),

                CourseDropdown(
                  namapelajaran: 'Link dan Gambar',
                  gambar: 'lib/aset/gambar/course/gbr1.webp',
                  isipelajaran:
                  'HTML dapat menampilkan link dan gambar.\n\n'
                  'Link digunakan untuk berpindah ke halaman lain.\n\n'
                  'Contoh link:\n'
                  '<a href=\"https://www.google.com\">Kunjungi Google</a>\n\n'
                  'Gambar digunakan untuk menampilkan visual.\n\n'
                  'Contoh gambar:\n'
                  '<img src=\"gambar.jpg\" alt=\"Deskripsi gambar\">\n\n'
                  'Atribut src menunjukkan lokasi file.\n'
                  'Atribut alt berisi teks pengganti jika gambar gagal dimuat.',
                ),
                SizedBox(height: 15),

                CourseDropdown(
                  namapelajaran: 'List (Daftar)',
                  gambar: 'lib/aset/gambar/course/gbr1.webp',
                  isipelajaran:
                  'HTML memiliki dua jenis list utama.\n\n'
                  'Ordered List digunakan untuk daftar berurutan.\n'
                  'Contoh:\n'
                  '<ol>\n'
                  '  <li>HTML</li>\n'
                  '  <li>CSS</li>\n'
                  '  <li>JavaScript</li>\n'
                  '</ol>\n\n'
                  'Unordered List digunakan untuk daftar tanpa urutan.\n'
                  'Contoh:\n'
                  '<ul>\n'
                  '  <li>Header</li>\n'
                  '  <li>Content</li>\n'
                  '  <li>Footer</li>\n'
                  '</ul>',
                ),

          SizedBox(height: 40),
            
            ],
          ),
        ),
      ),
    );
  }
}