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
                  'Belajar Fundamental Pemrograman',
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
                namapelajaran: 'Variable Dasar', 
                isipelajaran: 'Sed porta mattis fringilla. Nam commodo vulputate dui, id interdum orci eleifend in. Pellentesque tortor lectus, interdum vitae accumsan nec, interdum nec nisi. Vestibulum vitae eros et purus sagittis semper at nec lorem. Donec vel ex tortor. Pellentesque egestas, ipsum sit amet consectetur efficitur, purus turpis mattis quam, at porttitor lectus diam eget ligula. Ut dictum sem in turpis sollicitudin accumsan. Fusce molestie urna sit amet auctor ullamcorper. Quisque pulvinar magna quis nulla posuere, id rutrum sem mollis. Nam dignissim odio tellus, quis molestie dolor tristique vel. Integer dapibus, elit lobortis auctor aliquam, turpis ligula scelerisque nisl, vitae dictum erat nulla quis enim. Aliquam quam orci, ultrices et ultrices ut, cursus non ligula. Nam aliquam posuere euismod. Integer semper egestas ex, at facilisis nisi maximus vel. Donec et fermentum felis. Curabitur nisl augue, laoreet non diam sit amet, tincidunt dapibus ante.Sed porta mattis fringilla. Nam commodo vulputate dui, id interdum orci eleifend in. Pellentesque tortor lectus, interdum vitae accumsan nec, interdum nec nisi. Vestibulum vitae eros et purus sagittis semper at nec lorem. Donec vel ex tortor. Pellentesque egestas, ipsum sit amet consectetur efficitur, purus turpis mattis quam, at porttitor lectus diam eget ligula. Ut dictum sem in turpis sollicitudin accumsan. Fusce molestie urna sit amet auctor ullamcorper. Quisque pulvinar magna quis nulla posuere, id rutrum sem mollis. Nam dignissim odio tellus, quis molestie dolor tristique vel. Integer dapibus, elit lobortis auctor aliquam, turpis ligula scelerisque nisl, vitae dictum erat nulla quis enim. Aliquam quam orci, ultrices et ultrices ut, cursus non ligula. Nam aliquam posuere euismod. Integer semper egestas ex, at facilisis nisi maximus vel. Donec et fermentum felis. Curabitur nisl augue, laoreet non diam sit amet, tincidunt dapibus ante.', 
                gambar: 'lib/aset/gambar/gbr1.webp'),
              const SizedBox(height: 15,),
              CourseDropdown(
                namapelajaran: 'Variable Dasar', 
                isipelajaran: 'Sed porta mattis fringilla. Nam commodo vulputate dui, id interdum orci eleifend in. Pellentesque tortor lectus, interdum vitae accumsan nec, interdum nec nisi. Vestibulum vitae eros et purus sagittis semper at nec lorem. Donec vel ex tortor. Pellentesque egestas, ipsum sit amet consectetur efficitur, purus turpis mattis quam, at porttitor lectus diam eget ligula. Ut dictum sem in turpis sollicitudin accumsan. Fusce molestie urna sit amet auctor ullamcorper. Quisque pulvinar magna quis nulla posuere, id rutrum sem mollis. Nam dignissim odio tellus, quis molestie dolor tristique vel. Integer dapibus, elit lobortis auctor aliquam, turpis ligula scelerisque nisl, vitae dictum erat nulla quis enim. Aliquam quam orci, ultrices et ultrices ut, cursus non ligula. Nam aliquam posuere euismod. Integer semper egestas ex, at facilisis nisi maximus vel. Donec et fermentum felis. Curabitur nisl augue, laoreet non diam sit amet, tincidunt dapibus ante.Sed porta mattis fringilla. Nam commodo vulputate dui, id interdum orci eleifend in. Pellentesque tortor lectus, interdum vitae accumsan nec, interdum nec nisi. Vestibulum vitae eros et purus sagittis semper at nec lorem. Donec vel ex tortor. Pellentesque egestas, ipsum sit amet consectetur efficitur, purus turpis mattis quam, at porttitor lectus diam eget ligula. Ut dictum sem in turpis sollicitudin accumsan. Fusce molestie urna sit amet auctor ullamcorper. Quisque pulvinar magna quis nulla posuere, id rutrum sem mollis. Nam dignissim odio tellus, quis molestie dolor tristique vel. Integer dapibus, elit lobortis auctor aliquam, turpis ligula scelerisque nisl, vitae dictum erat nulla quis enim. Aliquam quam orci, ultrices et ultrices ut, cursus non ligula. Nam aliquam posuere euismod. Integer semper egestas ex, at facilisis nisi maximus vel. Donec et fermentum felis. Curabitur nisl augue, laoreet non diam sit amet, tincidunt dapibus ante.', 
                gambar: 'lib/aset/gambar/gbr1.webp'),
              const SizedBox(height: 15,),
              CourseDropdown(
                namapelajaran: 'Variable Dasar', 
                isipelajaran: 'Sed porta mattis fringilla. Nam commodo vulputate dui, id interdum orci eleifend in. Pellentesque tortor lectus, interdum vitae accumsan nec, interdum nec nisi. Vestibulum vitae eros et purus sagittis semper at nec lorem. Donec vel ex tortor. Pellentesque egestas, ipsum sit amet consectetur efficitur, purus turpis mattis quam, at porttitor lectus diam eget ligula. Ut dictum sem in turpis sollicitudin accumsan. Fusce molestie urna sit amet auctor ullamcorper. Quisque pulvinar magna quis nulla posuere, id rutrum sem mollis. Nam dignissim odio tellus, quis molestie dolor tristique vel. Integer dapibus, elit lobortis auctor aliquam, turpis ligula scelerisque nisl, vitae dictum erat nulla quis enim. Aliquam quam orci, ultrices et ultrices ut, cursus non ligula. Nam aliquam posuere euismod. Integer semper egestas ex, at facilisis nisi maximus vel. Donec et fermentum felis. Curabitur nisl augue, laoreet non diam sit amet, tincidunt dapibus ante.Sed porta mattis fringilla. Nam commodo vulputate dui, id interdum orci eleifend in. Pellentesque tortor lectus, interdum vitae accumsan nec, interdum nec nisi. Vestibulum vitae eros et purus sagittis semper at nec lorem. Donec vel ex tortor. Pellentesque egestas, ipsum sit amet consectetur efficitur, purus turpis mattis quam, at porttitor lectus diam eget ligula. Ut dictum sem in turpis sollicitudin accumsan. Fusce molestie urna sit amet auctor ullamcorper. Quisque pulvinar magna quis nulla posuere, id rutrum sem mollis. Nam dignissim odio tellus, quis molestie dolor tristique vel. Integer dapibus, elit lobortis auctor aliquam, turpis ligula scelerisque nisl, vitae dictum erat nulla quis enim. Aliquam quam orci, ultrices et ultrices ut, cursus non ligula. Nam aliquam posuere euismod. Integer semper egestas ex, at facilisis nisi maximus vel. Donec et fermentum felis. Curabitur nisl augue, laoreet non diam sit amet, tincidunt dapibus ante.', 
                gambar: 'lib/aset/gambar/gbr1.webp'),
              const SizedBox(height: 15,),
              CourseDropdown(
                namapelajaran: 'Variable Dasar', 
                isipelajaran: 'Sed porta mattis fringilla. Nam commodo vulputate dui, id interdum orci eleifend in. Pellentesque tortor lectus, interdum vitae accumsan nec, interdum nec nisi. Vestibulum vitae eros et purus sagittis semper at nec lorem. Donec vel ex tortor. Pellentesque egestas, ipsum sit amet consectetur efficitur, purus turpis mattis quam, at porttitor lectus diam eget ligula. Ut dictum sem in turpis sollicitudin accumsan. Fusce molestie urna sit amet auctor ullamcorper. Quisque pulvinar magna quis nulla posuere, id rutrum sem mollis. Nam dignissim odio tellus, quis molestie dolor tristique vel. Integer dapibus, elit lobortis auctor aliquam, turpis ligula scelerisque nisl, vitae dictum erat nulla quis enim. Aliquam quam orci, ultrices et ultrices ut, cursus non ligula. Nam aliquam posuere euismod. Integer semper egestas ex, at facilisis nisi maximus vel. Donec et fermentum felis. Curabitur nisl augue, laoreet non diam sit amet, tincidunt dapibus ante.Sed porta mattis fringilla. Nam commodo vulputate dui, id interdum orci eleifend in. Pellentesque tortor lectus, interdum vitae accumsan nec, interdum nec nisi. Vestibulum vitae eros et purus sagittis semper at nec lorem. Donec vel ex tortor. Pellentesque egestas, ipsum sit amet consectetur efficitur, purus turpis mattis quam, at porttitor lectus diam eget ligula. Ut dictum sem in turpis sollicitudin accumsan. Fusce molestie urna sit amet auctor ullamcorper. Quisque pulvinar magna quis nulla posuere, id rutrum sem mollis. Nam dignissim odio tellus, quis molestie dolor tristique vel. Integer dapibus, elit lobortis auctor aliquam, turpis ligula scelerisque nisl, vitae dictum erat nulla quis enim. Aliquam quam orci, ultrices et ultrices ut, cursus non ligula. Nam aliquam posuere euismod. Integer semper egestas ex, at facilisis nisi maximus vel. Donec et fermentum felis. Curabitur nisl augue, laoreet non diam sit amet, tincidunt dapibus ante.', 
                gambar: 'lib/aset/gambar/gbr1.webp'),
              const SizedBox(height: 15,),
              CourseDropdown(
                namapelajaran: 'Variable Dasar', 
                isipelajaran: 'Sed porta mattis fringilla. Nam commodo vulputate dui, id interdum orci eleifend in. Pellentesque tortor lectus, interdum vitae accumsan nec, interdum nec nisi. Vestibulum vitae eros et purus sagittis semper at nec lorem. Donec vel ex tortor. Pellentesque egestas, ipsum sit amet consectetur efficitur, purus turpis mattis quam, at porttitor lectus diam eget ligula. Ut dictum sem in turpis sollicitudin accumsan. Fusce molestie urna sit amet auctor ullamcorper. Quisque pulvinar magna quis nulla posuere, id rutrum sem mollis. Nam dignissim odio tellus, quis molestie dolor tristique vel. Integer dapibus, elit lobortis auctor aliquam, turpis ligula scelerisque nisl, vitae dictum erat nulla quis enim. Aliquam quam orci, ultrices et ultrices ut, cursus non ligula. Nam aliquam posuere euismod. Integer semper egestas ex, at facilisis nisi maximus vel. Donec et fermentum felis. Curabitur nisl augue, laoreet non diam sit amet, tincidunt dapibus ante.Sed porta mattis fringilla. Nam commodo vulputate dui, id interdum orci eleifend in. Pellentesque tortor lectus, interdum vitae accumsan nec, interdum nec nisi. Vestibulum vitae eros et purus sagittis semper at nec lorem. Donec vel ex tortor. Pellentesque egestas, ipsum sit amet consectetur efficitur, purus turpis mattis quam, at porttitor lectus diam eget ligula. Ut dictum sem in turpis sollicitudin accumsan. Fusce molestie urna sit amet auctor ullamcorper. Quisque pulvinar magna quis nulla posuere, id rutrum sem mollis. Nam dignissim odio tellus, quis molestie dolor tristique vel. Integer dapibus, elit lobortis auctor aliquam, turpis ligula scelerisque nisl, vitae dictum erat nulla quis enim. Aliquam quam orci, ultrices et ultrices ut, cursus non ligula. Nam aliquam posuere euismod. Integer semper egestas ex, at facilisis nisi maximus vel. Donec et fermentum felis. Curabitur nisl augue, laoreet non diam sit amet, tincidunt dapibus ante.', 
                gambar: 'lib/aset/gambar/gbr1.webp'),
              const SizedBox(height: 15,),
              CourseDropdown(
                namapelajaran: 'Variable Dasar', 
                isipelajaran: 'Sed porta mattis fringilla. Nam commodo vulputate dui, id interdum orci eleifend in. Pellentesque tortor lectus, interdum vitae accumsan nec, interdum nec nisi. Vestibulum vitae eros et purus sagittis semper at nec lorem. Donec vel ex tortor. Pellentesque egestas, ipsum sit amet consectetur efficitur, purus turpis mattis quam, at porttitor lectus diam eget ligula. Ut dictum sem in turpis sollicitudin accumsan. Fusce molestie urna sit amet auctor ullamcorper. Quisque pulvinar magna quis nulla posuere, id rutrum sem mollis. Nam dignissim odio tellus, quis molestie dolor tristique vel. Integer dapibus, elit lobortis auctor aliquam, turpis ligula scelerisque nisl, vitae dictum erat nulla quis enim. Aliquam quam orci, ultrices et ultrices ut, cursus non ligula. Nam aliquam posuere euismod. Integer semper egestas ex, at facilisis nisi maximus vel. Donec et fermentum felis. Curabitur nisl augue, laoreet non diam sit amet, tincidunt dapibus ante.Sed porta mattis fringilla. Nam commodo vulputate dui, id interdum orci eleifend in. Pellentesque tortor lectus, interdum vitae accumsan nec, interdum nec nisi. Vestibulum vitae eros et purus sagittis semper at nec lorem. Donec vel ex tortor. Pellentesque egestas, ipsum sit amet consectetur efficitur, purus turpis mattis quam, at porttitor lectus diam eget ligula. Ut dictum sem in turpis sollicitudin accumsan. Fusce molestie urna sit amet auctor ullamcorper. Quisque pulvinar magna quis nulla posuere, id rutrum sem mollis. Nam dignissim odio tellus, quis molestie dolor tristique vel. Integer dapibus, elit lobortis auctor aliquam, turpis ligula scelerisque nisl, vitae dictum erat nulla quis enim. Aliquam quam orci, ultrices et ultrices ut, cursus non ligula. Nam aliquam posuere euismod. Integer semper egestas ex, at facilisis nisi maximus vel. Donec et fermentum felis. Curabitur nisl augue, laoreet non diam sit amet, tincidunt dapibus ante.', 
                gambar: 'lib/aset/gambar/gbr1.webp'),
              const SizedBox(height: 15,),
              CourseDropdown(
                namapelajaran: 'Variable Dasar', 
                isipelajaran: 'Sed porta mattis fringilla. Nam commodo vulputate dui, id interdum orci eleifend in. Pellentesque tortor lectus, interdum vitae accumsan nec, interdum nec nisi. Vestibulum vitae eros et purus sagittis semper at nec lorem. Donec vel ex tortor. Pellentesque egestas, ipsum sit amet consectetur efficitur, purus turpis mattis quam, at porttitor lectus diam eget ligula. Ut dictum sem in turpis sollicitudin accumsan. Fusce molestie urna sit amet auctor ullamcorper. Quisque pulvinar magna quis nulla posuere, id rutrum sem mollis. Nam dignissim odio tellus, quis molestie dolor tristique vel. Integer dapibus, elit lobortis auctor aliquam, turpis ligula scelerisque nisl, vitae dictum erat nulla quis enim. Aliquam quam orci, ultrices et ultrices ut, cursus non ligula. Nam aliquam posuere euismod. Integer semper egestas ex, at facilisis nisi maximus vel. Donec et fermentum felis. Curabitur nisl augue, laoreet non diam sit amet, tincidunt dapibus ante.Sed porta mattis fringilla. Nam commodo vulputate dui, id interdum orci eleifend in. Pellentesque tortor lectus, interdum vitae accumsan nec, interdum nec nisi. Vestibulum vitae eros et purus sagittis semper at nec lorem. Donec vel ex tortor. Pellentesque egestas, ipsum sit amet consectetur efficitur, purus turpis mattis quam, at porttitor lectus diam eget ligula. Ut dictum sem in turpis sollicitudin accumsan. Fusce molestie urna sit amet auctor ullamcorper. Quisque pulvinar magna quis nulla posuere, id rutrum sem mollis. Nam dignissim odio tellus, quis molestie dolor tristique vel. Integer dapibus, elit lobortis auctor aliquam, turpis ligula scelerisque nisl, vitae dictum erat nulla quis enim. Aliquam quam orci, ultrices et ultrices ut, cursus non ligula. Nam aliquam posuere euismod. Integer semper egestas ex, at facilisis nisi maximus vel. Donec et fermentum felis. Curabitur nisl augue, laoreet non diam sit amet, tincidunt dapibus ante.', 
                gambar: 'lib/aset/gambar/gbr1.webp'),
              const SizedBox(height: 15,),
              CourseDropdown(
                namapelajaran: 'Variable Dasar', 
                isipelajaran: 'Sed porta mattis fringilla. Nam commodo vulputate dui, id interdum orci eleifend in. Pellentesque tortor lectus, interdum vitae accumsan nec, interdum nec nisi. Vestibulum vitae eros et purus sagittis semper at nec lorem. Donec vel ex tortor. Pellentesque egestas, ipsum sit amet consectetur efficitur, purus turpis mattis quam, at porttitor lectus diam eget ligula. Ut dictum sem in turpis sollicitudin accumsan. Fusce molestie urna sit amet auctor ullamcorper. Quisque pulvinar magna quis nulla posuere, id rutrum sem mollis. Nam dignissim odio tellus, quis molestie dolor tristique vel. Integer dapibus, elit lobortis auctor aliquam, turpis ligula scelerisque nisl, vitae dictum erat nulla quis enim. Aliquam quam orci, ultrices et ultrices ut, cursus non ligula. Nam aliquam posuere euismod. Integer semper egestas ex, at facilisis nisi maximus vel. Donec et fermentum felis. Curabitur nisl augue, laoreet non diam sit amet, tincidunt dapibus ante.Sed porta mattis fringilla. Nam commodo vulputate dui, id interdum orci eleifend in. Pellentesque tortor lectus, interdum vitae accumsan nec, interdum nec nisi. Vestibulum vitae eros et purus sagittis semper at nec lorem. Donec vel ex tortor. Pellentesque egestas, ipsum sit amet consectetur efficitur, purus turpis mattis quam, at porttitor lectus diam eget ligula. Ut dictum sem in turpis sollicitudin accumsan. Fusce molestie urna sit amet auctor ullamcorper. Quisque pulvinar magna quis nulla posuere, id rutrum sem mollis. Nam dignissim odio tellus, quis molestie dolor tristique vel. Integer dapibus, elit lobortis auctor aliquam, turpis ligula scelerisque nisl, vitae dictum erat nulla quis enim. Aliquam quam orci, ultrices et ultrices ut, cursus non ligula. Nam aliquam posuere euismod. Integer semper egestas ex, at facilisis nisi maximus vel. Donec et fermentum felis. Curabitur nisl augue, laoreet non diam sit amet, tincidunt dapibus ante.', 
                gambar: 'lib/aset/gambar/gbr1.webp'),

              const SizedBox(height: 40,)
            
            ],
          ),
        ),
      ),
    );
  }
}