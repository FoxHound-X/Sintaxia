import 'package:aplikasi/aset/asetwidget.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi/aset/paketwarna.dart';
import 'package:aplikasi/aset/asetwidgetminor.dart';

class Fundamental extends StatelessWidget {
  const Fundamental({super.key});

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
          CourseDropdown(
            namapelajaran: 'Apa itu IDE?',
            gambar: 'lib/aset/gambar/course/gbr1.webp',
            isipelajaran:
            'IDE adalah Integrated Development Environment, sebuah perangkat lunak yang dirancang khusus untuk membantu proses pengembangan program dengan menyediakan fitur lengkap seperti compiler, debugger, code completion, dan project management.\n\n'
            'Contoh IDE: IntelliJ IDEA, Android Studio, Visual Studio, NetBeans.\n\n'
            'Terus apa bedanya dengan Text Editor biasa seperti VSCode atau Sublime Text?\n'
            'Bedanya adalah Text Editor dibuat untuk menulis dan mengedit kode saja, kompatibel dengan banyak bahasa tetapi tidak memiliki fitur komplit seperti IDE.\n\n'
            'VSCode contohnya, dia bisa menjadi IDE tetapi harus menggunakan extension tertentu.',
          ),
          SizedBox(height: 15),

          CourseDropdown(
            namapelajaran: 'Variable dan Tipe Data',
            gambar: 'lib/aset/gambar/course/gbr1.webp',
            isipelajaran:
            'Variable adalah tempat untuk menyimpan suatu data. Tipe data adalah jenis data yang ingin disimpan. Ada dua jenis tipe data, yaitu Tipe Data Primitif dan Tipe Data Kompleks.\n\n'
            '• Tipe Data Primitif: tipe data dasar yang hanya menyimpan satu nilai.\n'
            '  Contoh: int angka = 7;\n\n'
            '• Tipe Data Kompleks: tipe data yang dapat menyimpan banyak nilai dalam satu struktur.\n'
            '  Contoh: int angka[5] = {1,2,3,4,5};\n\n'
            'Jenis-jenis tipe data:\n'
            '📍 Tipe Data Primitif:\n'
            '• Float/Double → angka desimal (3.14)\n'
            '• Integer/int → angka bulat\n'
            '• String → teks\n'
            '• Character/char → satu huruf (A)\n'
            '• Boolean/bool → True / False\n\n'
            '📍 Tipe Data Kompleks:\n'
            '• Array/List → menyimpan banyak data sekaligus.',
          ),
          SizedBox(height: 15),

          CourseDropdown(
            namapelajaran: 'Operator',
            gambar: 'lib/aset/gambar/course/gbr1.webp',
            isipelajaran:
            'Operator adalah simbol untuk memberikan instruksi kepada komputer agar melakukan suatu operasi seperti perhitungan atau pembandingan.\n\n'
            'Contoh operator:\n'
            '• Penjumlahan: +\n'
            '• Pengurangan: -\n'
            '• Perkalian: *\n'
            '• Pembagian: /\n'
            '• Modulus: %\n'
            '• Menetapkan nilai: =\n'
            '• Perbandingan: >  <  >=  <=  ==  !=\n'
            '• Logika: && (dan), || (atau), ! (not)',
          ),
          SizedBox(height: 15),

          CourseDropdown(
            namapelajaran: "Perulangan (Looping)",
            gambar: 'lib/aset/gambar/course/gbr1.webp',
            isipelajaran:
            'Perulangan (Looping) adalah proses menjalankan blok kode secara berulang selama kondisi tertentu terpenuhi. Berguna untuk menghindari penulisan kode berulang.\n\n'
            '📍 Perulangan FOR\n'
            'Digunakan ketika jumlah perulangan sudah diketahui.\n'
            'Contoh:\n'
            'for (int i = 1; i <= 5; i++) {\n'
            '  print("Angka ke- i");\n'
            '}\n\n'
            '📍 WHILE Loop\n'
            'Digunakan ketika jumlah perulangan belum pasti.\n'
            'Contoh:\n'
            'int i = 1;\n'
            'while (i <= 5) {\n'
            '  print(i);\n'
            '  i++;\n'
            '}\n\n'
            '📍 DO-WHILE Loop\n'
            'Menjalankan kode minimal satu kali.\n'
            'do {\n'
            '  print(i);\n'
            '  i++;\n'
            '} while (i <= 5);',
          ),
          SizedBox(height: 15),

          CourseDropdown(
            namapelajaran: 'Percabangan (Conditional Statement)',
            gambar: 'lib/aset/gambar/course/gbr1.webp',
            isipelajaran:
            'Percabangan adalah fitur yang memungkinkan program mengambil keputusan berdasarkan kondisi True atau False. Biasanya digunakan untuk validasi.\n\n'
            'Contoh:\n'
            'int nilai = 80;\n'
            'if (nilai >= 75) {\n'
            '  print("Lulus");\n'
            '} else {\n'
            '  print("Tidak lulus");\n'
            '}',
          ),
          SizedBox(height: 15),

          CourseDropdown(
            namapelajaran: 'Fungsi (Function)',
            gambar: 'lib/aset/gambar/course/gbr1.webp',
            isipelajaran:
            'Function adalah blok kode yang digunakan untuk menjalankan tugas tertentu dan dapat dipanggil kembali.\n\n'
            'Contoh:\n'
            'int jumlah(int a, int b) {\n'
            '  return a + b;\n'
            '}\n\n'
            'void main() {\n'
            '  print(jumlah(5, 3)); // Output: 8\n'
            '}',
          ),

          SizedBox(height: 40),
            
            ],
          ),
        ),
      ),
    );
  }
}