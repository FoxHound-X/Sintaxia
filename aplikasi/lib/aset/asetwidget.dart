import 'package:aplikasi/aset/paketwarna.dart';
import 'package:flutter/material.dart';
// import 'package:aplikasi/main.dart';
// import 'package:aplikasi/aset/asetwidget.dart';

class Tombol extends StatelessWidget {
  final String nama;
  final Color warnateks;
  final VoidCallback onPressed;

  const Tombol({
    super.key,
    required this.nama,
    this.warnateks = paketwarna.nordicTitle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: paketwarna.nordicPrimButton,
          padding: EdgeInsets.zero,
          minimumSize: Size.zero,
          fixedSize: const Size(80, 35),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9)
          )
        ),
        child: Text(
          nama,
          style: TextStyle(
            fontSize: 15,
            color: warnateks
          ),
        ),
      )
    );
  }
}




class Cardkursus extends StatelessWidget {

  final String iconcard;
  final IconData icondificulty;
  final Color colorsific;
  final String judulkursus;
  final String pemilikkursus;
  final String deskripsi;
  final String statuskursus;
  final VoidCallback targethalaman;

  const Cardkursus({
    super.key,
    this.iconcard = 'lib/aset/gambar/brokenimage.png',
    required this.icondificulty,
    required this.colorsific,
    required this.judulkursus,
    required this.pemilikkursus,
    required this.deskripsi,
    this.statuskursus = 'Free Course',
    required this.targethalaman,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 250,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)
        ),
        color: paketwarna.nordicCard,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [

              //Bagian atas (Judul, pengembang kursus)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9)
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset(
                      iconcard,
                      width: 45,
                      height: 45,
                    ),
                  ),

                  Icon(
                    icondificulty,
                    color: colorsific,
                    size: 40,
                  )
                ],
              ),

              const SizedBox(height: 20,),

              //Judulu Kursus
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Juduk Materi
                  Text(
                    judulkursus,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: paketwarna.nordicTitle
                    ),
                  ),

                  //Pemilik Kursus
                  Text(
                    pemilikkursus,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: paketwarna.nordicTitle,
                      fontSize: 9
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 3,),

              //Deskripsi Kursus
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      deskripsi,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.normal,
                        color: paketwarna.nordicTitle,
                        fontSize: 11
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12,),
              
              //Tag, ini yang ada tulisna kategori gitu hanya hiasan
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [

              //     //Tag
              //     Container(
              //       width: 60,
              //       height: 20,
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(5),
              //         color: paketwarna.nordicButton1,
              //       ),
              //       child: Center(
              //         child: Text(
              //           '#Dart',
              //           style: TextStyle(
              //             fontFamily: 'Poppins',
              //             color: paketwarna.nordicTitle,
              //             fontWeight: FontWeight.w600
              //           ),
              //         ),
              //       ),
              //     ),

              //     const SizedBox(width: 5,),

              //     Container(
              //       width: 60,
              //       height: 20,
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(5),
              //         color: paketwarna.nordicButton1,
              //       ),
              //       child: Center(
              //         child: Text(
              //           '#Dasar',
              //           style: TextStyle(
              //             fontFamily: 'Poppins',
              //             color: paketwarna.nordicTitle,
              //             fontWeight: FontWeight.w600
              //           ),
              //         ),
              //       ),
              //     ),

              //   ],
              // ),

              //Ini adalah garis yang memisahkan antara widget dengan widget yang lain
              Divider(
                color: paketwarna.deepea0.withOpacity(0.4),
                //mengatur ketebalan garis
                thickness: 1,
                //mengatur tinggi garis
                height: 20,
                //Mengatur jarak awal garis
                indent: 0,
                //mengatur jarak akhir garis
                endIndent: 0,
              ),

              Row(
                children: [
                  Text(
                    statuskursus,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: paketwarna.nordicTitle
                    ),
                  ),

                  SizedBox(width: 48,),

                  SizedBox(
                    width: 60,
                    height: 30,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: paketwarna.nordicButton1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9)
                        )
                      ),
                      onPressed: targethalaman,
                      child: Text(
                        'Learn',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          color: paketwarna.nordicTitle,
                          fontSize: 11
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}


class InfoGraphicCard extends StatelessWidget {
  final VoidCallback haltujuan;
  final String judulmateri;
  final String deskripsi;
  final String gambar;

  const InfoGraphicCard({
    super.key,
    required this.haltujuan,
    required this.judulmateri,
    required this.deskripsi,
    this.gambar = 'lib/aset/gambar/brokenimage.png'

  });

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: haltujuan,
        child: Container(
          width: 340,
          height: 120,
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: paketwarna.nordicCard,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            
            child: Row(
              children: [
                //Gambar/icon kursus
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.transparent,
                        const Color.fromARGB(113, 255, 255, 255),
                      ]
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        gambar,
                        width: 90,
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
      
                const SizedBox(width: 20,),
      
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 170,
                        child: Text(
                          judulmateri,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: paketwarna.nordicTitle
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 170,
                        child: Divider(
                          color: paketwarna.nordicTitle.withOpacity(0.6),
                          thickness: 2,
                          height: 10,
                          indent: 0,
                          endIndent: 0,
                        ),
                      ),
                      SizedBox(
                        width: 170,
                        child: Text(
                          deskripsi,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 9,
                            color: paketwarna.nordicTitle
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// class Tagkursus extends StatelessWidget {
//   final String namatag;

//   const Tagkursus({
//     super.key,
//     required this.namatag,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 60,
//       height: 20,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(5),
//         color: paketwarna.nordicButton1,
//       ),
//       child: Center(
//         child: Text(
//           namatag,
//           style: TextStyle(
//             fontFamily: 'Poppins',
//             color: paketwarna.nordicTitle,
//             fontWeight: FontWeight.w600
//           ),
//         ),
//       ),
//     );
//   }
// }


class CourseDropdown extends StatelessWidget {
  final String namapelajaran;
  final String isipelajaran;
  final String gambar;

const CourseDropdown({
  super.key,
  required this.namapelajaran,
  required this.isipelajaran,
  required this.gambar
});

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white70, width: 2),
            borderRadius: BorderRadius.circular(20)
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ExpansionTile(
                collapsedIconColor: Colors.white,
                iconColor: Colors.white,
                title: Text(namapelajaran, style: TextStyle(color: Colors.white),),
                children: [
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(9),
                    child: Image.asset(
                      gambar, 
                      height: 200,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Text(isipelajaran,
                  style: TextStyle(
                    color: paketwarna.nordicTitle,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}