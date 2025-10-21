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

class Cardmateri extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}