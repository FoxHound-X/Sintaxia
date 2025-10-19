import 'package:flutter/material.dart';
import 'paketwarna.dart';

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
      child: SingleChildScrollView(
        child: Row(
          children: [
            TextButton(
              onPressed: onPressed,
              style: TextButton.styleFrom(
                backgroundColor: paketwarna.nordicPrimButton,
                minimumSize: Size(80, 30),
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
          ],
        ),
      ),
    );
  }
}