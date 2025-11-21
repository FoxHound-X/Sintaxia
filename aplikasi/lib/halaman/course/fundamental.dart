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

              const SizedBox(height: 15,),
              CourseDropdown(
                namapelajaran: 'Apa itu IDE?',
                isipelajaran: 'IDE adalah Integrated Development Environment, sebuah perangkat lunak yang di desain khusus untuk di gunakan oleh bahasa pemrograman tertentu, misal IntellijIDE dari JetBrains di gunakan untuk mengembangkan bahasa pemrograman Java \n'
                'Terus apa bedanya dengan Teks Editor biasa? kayak VSCode atau Sublime Text? \n'
                'Bedanya adalah Teks Editor di buat untuk Menulis dan mengedit saja, dia kompatibel dengan semua bahasa tetapi tidak terkhusu. \n'
                'VSCode contohnya, dia bisa menjadi IDE tetapi harus menggunakan Extensi tertentu.',
                gambar: 'lib/aset/gambar/course/gbr1.webp'),
              const SizedBox(height: 15,),
              CourseDropdown(
                namapelajaran: 'Variable dan Tipe Data', 
                isipelajaran: 'Variable Adalah Tempat Penyimpanan suatu data da Tipe data adalah jenis data yang ingin di simpan, ada dua jenis tipe data yaitu Tipe Data Primitif dan Kompleks. perbedaannya adalah:\n'
                '\n'
                '• Tipe data primitif: ini adalah tipe data dasar pemrograman.. Lebih sederhana dan hanya menyimpan satu nilai saja, dan lebih cepat. Contoh penggunaan nya [ int A = 7 ] \n'
                '• Tipe Data Kompleks: adalah tipe dasar pemrograman yang lebih cangih, bisa menyimpan lebih dari satu nilai dalam satu struktur. Contoh penggunaan nya [ int angka[5] = {1,2,3,4,5} ]\n'
                '\n'

                'Jenis Jenis Tipe data: \n'
                'Tipe Data Primitif: \n'
                '• Float/Double: Untuk menyimpan Angka Desimal\n' 
                '• Integer/int: untuk menyimpan angka bulat \n' 
                '• String: Jenis Tipe data untuk menyimpan Teks, untuk nama, alamat dan lain\n' 
                '• Character/char\n' 
                '• Bolean: Jenis Tipe data untuk menentukan True dan False\n'
                '\n'
                
                'Jenis Tipe data Kompleks: \n'
                '• Array/List: Menyimpan banyak nilai sekaligus \n', 
                gambar: 'lib/aset/gambar/course/gbr1.webp'),
              const SizedBox(height: 15,),
              CourseDropdown(
                namapelajaran: 'Operator', 
                isipelajaran: 'Operator adalah simbol atau tanda khusu untuk meemberi intruksi kepada komputer agar melakukan suatu operasi, misla menjumlahkan, perkalian, pengurangan \n\n'
                'Contoh Operator:\n'
                'Penjumlahan: +\n' 
                'Pengurangan: -\n' 
                'Perkalian: *\n' 
                'Pembaguan: /\n' 
                'Menetapkan Nilai: =\n' 
                'Perbandingan: > <\n', 
                gambar: 'lib/aset/gambar/course/gbr1.webp'),
              const SizedBox(height: 15,),
              CourseDropdown(
                namapelajaran:"Perulangan",
                isipelajaran: 'Perulangan (Looping), adalah proses untuk menjalankan blok kode secara berulang selama kondisi tertentu terpenuhi, ini biasanya di gunakan jika kita membutuhkan kode yang berulang terus menerus atau beberapa kali tanpa menulis ulang \n\n'
                'Berikut beberapa jenis perulangan atau Looping: \n\n'
                'Perulangan FOR \n'
                'Perulangan For Di gunakan ketika kalian sudah tau secara pasti berapa kali perulangan harus dieksekusi \n\n'
                '     // Menampilkan angka dari 1 sampai 5 \n'
                '     for (i = 1; i <= 5; i++) { \n'
                '     print("Angka ke- " + i);\n'
                '     }',
                gambar: 'lib/aset/gambar/course/gbr1.webp',
              ),
              const SizedBox(height: 15,),


              const SizedBox(height: 40,)
            
            ],
          ),
        ),
      ),
    );
  }
}
