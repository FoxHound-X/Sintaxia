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
    this.iconcard = 'lib/aset/gambar/logodart.avif',
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


class Tagkursus extends StatelessWidget {
  final String namatag;

  const Tagkursus({
    super.key,
    required this.namatag,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: paketwarna.nordicButton1,
      ),
      child: Center(
        child: Text(
          namatag,
          style: TextStyle(
            fontFamily: 'Poppins',
            color: paketwarna.nordicTitle,
            fontWeight: FontWeight.w600
          ),
        ),
      ),
    );
  }
}
