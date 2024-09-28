import 'package:flutter/material.dart';
import 'package:google_clon/colors.dart';

class Buttons extends StatelessWidget {
  final String title;
  const Buttons({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: searchColor, shadowColor: Colors.transparent),
        child: Text(
          title,
          style: const TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}
